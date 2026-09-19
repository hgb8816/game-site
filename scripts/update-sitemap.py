# -*- coding: utf-8 -*-
import os

root = r"C:\Users\Administrator\.qclaw\workspace\game-site"
art = os.path.join(root, "articles")
files = sorted(f for f in os.listdir(art) if f.endswith(".html"))
base = "https://hgb8816.github.io/game-site/"

lines = ['<?xml version="1.0" encoding="UTF-8"?>']
lines.append('<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">')

def add(loc, freq):
    lines.append('  <url><loc>%s</loc><changefreq>%s</changefreq></url>' % (loc, freq))

add(base + "index.html", "weekly")
for f in files:
    add(base + "articles/" + f, "monthly")
add(base + "about.html", "yearly")
add(base + "privacy.html", "yearly")
lines.append('</urlset>')

with open(os.path.join(root, "sitemap.xml"), "w", encoding="utf-8") as fp:
    fp.write("\n".join(lines) + "\n")

print("sitemap 已更新，收录页面数：", len(files) + 3)
for f in files:
    print("  -", f)
