# -*- coding: utf-8 -*-
import io

p = r"C:\Users\Administrator\.qclaw\workspace\game-site\scripts\promo-posts.md"
with io.open(p, "r", encoding="utf-8", errors="ignore") as f:
    content = f.read()

extra = (
    "\n"
    "## 12. PS5 vs Xbox（对比长尾）\n"
    "标题：PS5 还是 Xbox Series X？2026 年一句话结论\n"
    "文案：看独占选 PS5，看性价比+订阅选 Xbox。完整对比:\n"
    "https://hgb8816.github.io/game-site/articles/ps5-vs-xbox-series-x.html\n"
    "\n"
    "## 13. PC 单机推荐（导量主力）\n"
    "文案：2026 年 PC 单机按类型挑，开放世界/肉鸽/剧情/模拟各推什么。清单:\n"
    "https://hgb8816.github.io/game-site/articles/pc-games-2026.html\n"
    "\n"
    "## 14. 游戏显示器（外设+联盟）\n"
    "文案：显示器比显卡更影响体感？刷新率/面板/尺寸怎么选。附精选:\n"
    "https://hgb8816.github.io/game-site/articles/best-gaming-monitor-2026.html\n"
    "\n"
    "## 15. Steam 史低查询（省钱传播）\n"
    "文案：Steam 假折扣多，几招查史低+设提醒，一年省一半。\n"
    "https://hgb8816.github.io/game-site/articles/steam-lowest-price-tools.html\n"
    "\n"
    "## 16. 显卡选购（高客单佣金）\n"
    "文案：2026 显卡按分辨率闭眼入，显存/架构避坑。附京东精选:\n"
    "https://hgb8816.github.io/game-site/articles/gpu-2026-buy-guide.html\n"
    "\n"
    "## 17. 三档配置单（高客单）\n"
    "文案：5000/8000/12000 三档台式机配置单，显卡优先级最高。\n"
    "https://hgb8816.github.io/game-site/articles/pc-build-5000-8000-12000.html\n"
    "\n"
    "## 18. 手游转 PC（迁移引流）\n"
    "文案：手游玩腻想换 PC？按你手游类型平滑过渡到大作。\n"
    "https://hgb8816.github.io/game-site/articles/mobile-to-pc-games.html\n"
    "\n"
    "## 19. SSD vs HDD（对比）\n"
    "文案：游戏装 SSD 还是 HDD？加载速度+价格搭配方案。\n"
    "https://hgb8816.github.io/game-site/articles/ssd-vs-hdd-game-storage.html\n"
    "\n"
    "---\n"
)

with io.open(p, "w", encoding="utf-8") as f:
    f.write(content + extra)
print("promo-posts.md 已重写并追加 8 篇引流文案，现总长", len(content + extra), "字符")
