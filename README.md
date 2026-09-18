# 游戏玩家指南 · 0 成本赚钱�?
纯静态网站（HTML + CSS），可免费部署到 GitHub Pages / Cloudflare Pages�?变现：联盟佣金（京东/Steam�? 广告（百度联�?AdSense�? 后期可整体转卖�?
## 一、部署（免费，约 10 分钟�?
### 方式 A：GitHub Pages（推荐，最稳）
1. 注册 GitHub（免费）：https://github.com
2. 新建仓库，名�?`game-site`（或任意名）
3. 把本目录所有文�?push 上去�?   ```bash
   cd game-site
   git init
   git add .
   git commit -m "first"
   git branch -M main
   git remote add origin https://github.com/hgb8816/game-site.git
   git push -u origin main
   ```
4. 仓库 Settings �?Pages �?Source �?`main` 分支 �?Save
5. 几分钟后访问 `https://hgb8816.github.io/game-site/`

> 把上�?`hgb8816` 换成你的 GitHub 用户名；同时替换 `robots.txt` �?`sitemap.xml` 里的域名�?
### 方式 B：Cloudflare Pages
1. 注册 Cloudflare（免费）
2. Pages �?连接 Git 仓库 �?�?`game-site` �?直接部署（无需构建命令�?3. 会给你一�?`xxx.pages.dev` 域名，可后续绑自己域名（可选）

## 二、开通变现（都是免费申请�?
1. **京东联盟**（外�?数码佣金）：https://union.jd.com
   - 你的 PID（已确认）：`2038574972_4108035044_3108499673`
   - ⚠️ PID 不是可点击链接，必须进后台「我要推广→商品推广」选商�?选该推广位，生成 `https://u.jd.com/xxxxxx` 短链
   - 把短链替换进 `best-gaming-headset-2026.html` �?`REPLACE_WITH_JD_UNION_LINK`
   - 以后每写一篇带商品的文章，都重复一次「选商品→选推广位→复制短链」即可（每次几十秒）
2. **百度联盟 / Google AdSense**（广告）：申请后在后台拿代码，粘到各�?`[广告位]` 占位 div �?3. **Steam**：链接本身免费，也可�?Steam 搬运/鉴赏家号导流

## 三、流量（人工 + 自动�?
- 人工：把 `scripts/promo-posts.md` 里的现成文案，发到贴�?知乎/微博/小红�?B站动�?QQ群，带站点链�?- 自动：`scripts/submit-seo.ps1` 一键把 sitemap 提交给百�?必应站长平台（需你先在平台验证站点）
- SEO：保持每�?1~2 篇新文章（见 `scripts/content-plan.md`），搜索引擎才会持续给流�?
## 四、重要提�?- 联盟/广告链接都标�?`rel="nofollow"`，合规�?- 内容全原创、不搬运、不盗版，长期安全�?- 0 成本 + 少管 = �?SEO 自然长草，前 1~3 个月收入很少，坚持更新才起量�?