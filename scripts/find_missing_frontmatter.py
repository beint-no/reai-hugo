import os
import sys
from typing import Dict, List, Tuple

REQUIRED_KEYS = ["title", "seoTitle", "description", "summary"]
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
BASE_DIR = os.path.join(ROOT, "content")


def parse_frontmatter(path: str) -> Tuple[Dict[str, str], int]:
    fm: Dict[str, str] = {}
    if not os.path.isfile(path):
        return fm, 0
    with open(path, "r", encoding="utf-8-sig") as f:
        lines = f.readlines()
    if not lines or not lines[0].lstrip().startswith("---"):
        return fm, 0
    i = 1
    while i < len(lines) and not lines[i].lstrip().startswith("---"):
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


def main() -> int:
    base = BASE_DIR
    if not os.path.isdir(base):
        print(f"Base directory not found: {base}")
        return 2

    files = find_index_files(base)
    if not files:
        print("No index.md files found under content.")
        return 1

    total = 0
    missing_any = 0
    for fp in files:
        total += 1
        fm, _ = parse_frontmatter(fp)
        missing = [k for k in REQUIRED_KEYS if not fm.get(k)]
        if missing:
            missing_any += 1
            rel = os.path.relpath(fp, ROOT)
            print(f"{rel}: MISSING -> {', '.join(missing)}")

    print(f"Checked: {total} file(s). Files with missing keys: {missing_any}.")
    if missing_any:
        print("Required keys:", ", ".join(REQUIRED_KEYS))
        return 3
    return 0


if __name__ == "__main__":
    sys.exit(main())
