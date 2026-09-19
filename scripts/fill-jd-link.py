# -*- coding: utf-8 -*-
import io, os

root = r"C:\Users\Administrator\.qclaw\workspace\game-site"
art = os.path.join(root, "articles")
link = "https://u.jd.com/4rb0BAD"
placeholder = "REPLACE_WITH_JD_UNION_LINK"

files = [
    "best-gaming-headset-2026.html",
    "best-gaming-monitor-2026.html",
    "best-mechanical-keyboard-2026.html",
    "gaming-laptop-5000-2026.html",
    "gpu-2026-buy-guide.html",
    "pc-build-5000-8000-12000.html",
    "switch2-vs-steam-deck.html",
]

total = 0
for fn in files:
    p = os.path.join(art, fn)
    with io.open(p, "r", encoding="utf-8") as f:
        txt = f.read()
    n = txt.count(placeholder)
    if n == 0:
        print("跳过（无占位符）:", fn)
        continue
    txt = txt.replace(placeholder, link)
    with io.open(p, "w", encoding="utf-8") as f:
        f.write(txt)
    total += n
    print("已替换 %s : %d 处 -> %s" % (fn, n, link))

print("=== 共替换 %d 处 ===" % total)
