import os
import re
import sys
from typing import Dict, List, Tuple

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CONTENT_DIR = os.path.join(ROOT, "content")
OUTPUT_FILE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "index_md_with_invalid_frontmatter.txt")

LINK_RE = re.compile(r"\[[^\]]+\]\([^\)\s]+(?:\s+\"[^\"]*\")?\)")


def parse_frontmatter(path: str) -> Tuple[Dict[str, str], int]:
    fm: Dict[str, str] = {}
    if not os.path.isfile(path):
        return fm, 0
    with open(path, "r", encoding="utf-8-sig") as f:
        lines = f.readlines()
    if not lines:
        return fm, 0
    first = lines[0].lstrip()
    if first.startswith("---"):
        end_delim = "---"
    elif first.startswith("+++"):
        end_delim = "+++"
    else:
        return fm, 0
    i = 1
    while i < len(lines) and not lines[i].lstrip().startswith(end_delim):
        raw = lines[i].rstrip("\n")
        line = raw.strip()
        if line and ":" in line and not line.startswith("#"):
            key, val = line.split(":", 1)
            fm[key.strip()] = val.strip().strip('"').strip("'")
        i += 1
    return fm, i


def find_index_files(base_dir: str) -> List[str]:
    found: List[str] = []
    for root, dirs, files in os.walk(base_dir):
        for name in files:
            if name == "index.md":
                found.append(os.path.join(root, name))
    return sorted(found)


def value_has_invalid_markdown(val: str) -> bool:
    if not val:
        return False
    if "**" in val:
        return True
    if LINK_RE.search(val):
        return True
    return False


essential_keys = {"title", "seoTitle", "description", "summary", "layout"}


def main() -> int:
    if not os.path.isdir(CONTENT_DIR):
        print(f"Content directory not found: {CONTENT_DIR}")
        return 2

    files = find_index_files(CONTENT_DIR)
    offending: List[str] = []

    for fp in files:
        fm, _ = parse_frontmatter(fp)
        if not fm:
            continue
        for k, v in fm.items():
            if value_has_invalid_markdown(v):
                offending.append(os.path.relpath(fp, ROOT))
                break

    with open(OUTPUT_FILE, "w", encoding="utf-8") as out:
        for p in offending:
            out.write(p + "\n")

    print(f"Scanned {len(files)} index.md file(s). Found {len(offending)} with invalid frontmatter.\nWritten: {os.path.relpath(OUTPUT_FILE, ROOT)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
