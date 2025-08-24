#!/usr/bin/env -S uv run --no-project
# /// script
# requires-python = ">=3.9"
# dependencies = ["pyyaml"]
# ///

# Run from blogs/:  uv run ./generate_article_svgs.py
from pathlib import Path
from xml.sax.saxutils import escape
import yaml

def read_frontmatter(md_path: Path) -> dict:
    try:
        txt = md_path.read_text(encoding="utf-8")
    except FileNotFoundError:
        return {}
    if txt.startswith("\ufeff"):
        txt = txt[1:]
    s = txt.lstrip()
    if not s.startswith("---"):
        return {}
    parts = s.split("---", 2)
    if len(parts) < 3:
        return {}
    try:
        return yaml.safe_load(parts[1]) or {}
    except Exception:
        return {}

def wrap_by_width(text: str, font_size: int, width: int, margin: int):
    if not text:
        return []
    avg_char_w = font_size * 0.55  # heuristic
    max_chars = max(8, int((width - 2 * margin) / avg_char_w))
    words, lines, cur = text.split(), [], ""
    for w in words:
        if len(cur) + (1 if cur else 0) + len(w) <= max_chars:
            cur = (cur + " " + w).strip()
        else:
            lines.append(cur); cur = w
    if cur:
        lines.append(cur)
    return lines

def tspans_center(lines, line_height, cx):
    out=[]
    for i, line in enumerate(lines):
        dy = "0" if i == 0 else str(line_height)
        out.append(f'<tspan x="{cx}" dy="{dy}">{escape(line)}</tspan>')
    return "\n        ".join(out)

def make_svg(title, desc, *, width=1200, height=630,
             bg="#f3f4f6", fg="#0b1220"):  # slightly grey bg
    margin = 80
    title_size = 52
    desc_size  = 30
    lh_title = int(title_size * 1.25)
    lh_desc  = int(desc_size  * 1.45)
    gap = 28
    cx = width // 2

    t_lines = wrap_by_width(title or "", title_size, width, margin)
    d_lines = wrap_by_width(desc or "",  desc_size,  width, margin)

    block_h = len(t_lines)*lh_title + (gap if d_lines else 0) + len(d_lines)*lh_desc
    start_y = int((height - block_h)/2 + title_size)  # baseline of first title line
    y_desc  = start_y + len(t_lines)*lh_title + (gap if d_lines else 0)

    return f'''<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}" preserveAspectRatio="xMidYMid meet">
  <rect width="100%" height="100%" fill="{bg}"/>
  <g font-family="-apple-system,system-ui,Segoe UI,Roboto,Helvetica,Arial,sans-serif" fill="{fg}">
    <text y="{start_y}" text-anchor="middle" font-size="{title_size}" font-weight="700" xml:space="preserve">
        {tspans_center(t_lines, lh_title, cx)}
    </text>
    <text y="{y_desc}" text-anchor="middle" font-size="{desc_size}" xml:space="preserve">
        {tspans_center(d_lines, lh_desc, cx)}
    </text>
  </g>
</svg>'''

def resolve_output_path(folder: Path, fm: dict) -> Path:
    return folder / (folder.name + "-image.svg")

def main():
    base = Path.cwd()
    width = 1200
    height = 630
    bg = "#f3f4f6"
    fg = "#0b1220"
    processed = 0

    for md in sorted(base.rglob("index.md")):
        folder = md.parent
        fm = read_frontmatter(md)
        if not fm:
            print(f"Skip (no frontmatter): {md}")
            continue
        title = (fm.get("title") or "").strip()
        desc_primary = (fm.get("summary") or "").strip()
        desc_fallback = (fm.get("description") or "").strip()
        desc = desc_primary if desc_primary else desc_fallback
        out_path = folder / (folder.name + "-image.svg")
        out_path.parent.mkdir(parents=True, exist_ok=True)
        svg = make_svg(title, desc, width=width, height=height, bg=bg, fg=fg)
        out_path.write_text(svg, encoding="utf-8")
        print(f"Wrote: {out_path.relative_to(Path.cwd())}")
        processed += 1
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
