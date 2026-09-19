# 批量生成第二批 8 篇原创 SEO 文章（统一模板，避免格式错位）
$ErrorActionPreference = "Stop"
$root = "C:\Users\Administrator\.qclaw\workspace\game-site"
$art  = Join-Path $root "articles"

function Build-Article($title, $desc, $tag, $readmin, $bodyHtml, $affiliate) {
@"
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>$title</title>
<meta name="description" content="$desc">
<link rel="stylesheet" href="../assets/style.css">
</head>
<body>
<header><div class="wrap"><div class="logo">游戏玩家<span>指南</span></div>
<nav><a href="../index.html">首页</a><a href="../about.html">关于</a></nav></div></header>

<article class="wrap">
  <h1>$title</h1>
  <div class="meta">$tag · 阅读约 $readmin</div>

$bodyHtml
$affiliate
  <p><a class="btn" href="../index.html">← 返回首页</a></p>
</article>

<div class="wrap"><div class="ad-box">［广告位］在此粘贴你的广告代码</div></div>

<footer><div class="wrap"><p>© 2026 游戏玩家指南 · <a href="../privacy.html">隐私政策</a></p></div></footer>
</body>
</html>
"@
}

function Aff-Box($kw) {
@"
  <div class="affiliate">
    🛒 我们整理了<strong>京东联盟精选清单</strong>，点链接购买价格不变，我们会获得少量佣金支持网站运营：
    <br><a href="REPLACE_WITH_JD_UNION_LINK" target="_blank" rel="nofollow">查看京东$kw 精选 ›</a>
    <br><span style="color:var(--sub);font-size:12px">你的京东联盟 PID：2038574972_4108035044_3108499673｜ 去 <a href="https://union.jd.com" target="_blank" rel="nofollow">京东联盟后台</a> → 我要推广 → 商品推广 → 搜「$kw」→ 选推广位 PID=4108035044 → 复制 https://u.jd.com/xxxxxx 短链替换上面占位即可生效。</span>
  </div>

"@
}

# ---- 1. PS5 vs Xbox Series X ----
$t1 = Build-Article "PS5 还是 Xbox Series X：2026 年怎么选" "2026 年 PS5 与 Xbox Series X 怎么选？从独占游戏、性能、订阅服务、二手生态四个维度对比，给出结论。" "对比" "6 分钟" @"
  <p>两台主机这一代硬件差距极小，决定买哪台的核心是<strong>你想玩什么游戏</strong>和<strong>怎么玩更省</strong>。下面四个维度帮你定。</p>
  <h2>独占游戏</h2>
  <p>索尼第一方（战神、蜘蛛侠、对马岛）阵容更密；微软把独占逐步搬到 PC，主机独占吸引力在下降。如果你只玩主机、又馋索尼独占，PS5 更稳。</p>
  <h2>性能与画质</h2>
  <p>Series X 理论算力略高、支持完整 4K/60；PS5 有自研 SSD 加载极快、DualSense 手柄反馈独有。实际体感差距不大，别为纸面参数纠结。</p>
  <h2>订阅服务</h2>
  <p>Game Pass 是微软最大杀器：月费畅玩上百款，含首日独占。预算紧、爱尝鲜，Xbox 更值；只想买断几款大作，两者都行。</p>
  <h2>结论</h2>
  <p>看重独占+手柄体验选 PS5；看重性价比+订阅海量选 Xbox Series X。两者都不亏，按游戏库下注最稳。</p>
  <div class="note">避坑：别为「性能更强一点」多花一千，那点差距你眼睛根本分不出。</div>
"@ ""

# ---- 2. 2026 值得玩的 PC 单机游戏 ----
$t2 = Build-Article "2026 年值得玩的 PC 单机游戏（按类型挑）" "2026 年 PC 单机游戏推荐：开放世界、Roguelike、剧情向、模拟经营四类精选，附适合人群。" "推荐" "5 分钟" @"
  <p>挑单机游戏先看自己<strong>能投入多少时间</strong>和<strong>喜欢什么节奏</strong>。下面按类型给清单。</p>
  <h2>开放世界</h2>
  <p>想沉浸几十小时、自由探索的，优先看年度口碑作与黑神话类动作冒险。注意看优化评测，别让烂移植毁了体验。</p>
  <h2>Roguelike</h2>
  <p>碎片时间、爱「再来一把」的，选机制扎实的肉鸽。重点看手感与 Build 深度，而非美术。</p>
  <h2>剧情向</h2>
  <p>想被故事打动、一次通关的，选叙事强作。这类通常 15~30 小时，性价比最高。</p>
  <h2>模拟经营</h2>
  <p>放松向、能玩上百小时的，选模拟/建造类。看社区模组活跃度，有 Mod 寿命翻倍。</p>
  <div class="note">省钱法：等史低+首年打折，单机游戏一年后能省 50%~70%。</div>
"@ ""

# ---- 3. 游戏显示器怎么选 2026 ----
$t3 = Build-Article "2026 游戏显示器怎么选：刷新率/面板/尺寸一篇讲清" "2026 年游戏显示器选购指南：144Hz/240Hz、IPS/VA/OLED、27 寸怎么选，按用途与预算给结论。" "外设导购" "5 分钟" @"
  <p>显示器比显卡更影响日常体感。三个指标决定体验：<strong>刷新率</strong>（顺不顺）、<strong>面板</strong>（色彩/拖影）、<strong>尺寸分辨率</strong>（清晰度和显卡压力）。</p>
  <h2>刷新率</h2>
  <p>FPS 玩家上 240Hz；多数人选 144~165Hz 已足够丝滑。高刷对显卡要求更高，配套要跟上。</p>
  <h2>面板</h2>
  <p>IPS 均衡、VA 对比度高但可能拖影、OLED 色彩顶级但贵且需注意烧屏。预算有限 IPS 最稳。</p>
  <h2>尺寸与分辨率</h2>
  <p>27 寸 2K 是甜点；4K 爽但吃显卡；带鱼屏沉浸强但要好显卡。先定显卡再定分辨率。</p>
  <div class="note">避坑：别为「电竞」溢价买杂牌高刷，先看真实拖影测试。</div>
"@ (Aff-Box "游戏显示器")

# ---- 4. Steam 史低查询工具 ----
$t4 = Build-Article "Steam 史低查询与降价提醒：这几招帮你省一半" "Steam 怎么查史低价格、设降价提醒、判断该不该买？推荐常用工具与判断方法，原创实用向。" "省钱" "4 分钟" @"
  <p>Steam 打折多但「假折扣」也多。会查史低，一年能省一大笔。</p>
  <h2>查史低</h2>
  <p>用第三方价格追踪站（如 SteamDB 等）看历史最低价曲线，低于或等于史低再出手最稳。</p>
  <h2>设提醒</h2>
  <p>把想玩的游戏加愿望单，降价会邮件/App 推送。别天天刷商店，让提醒替你盯着。</p>
  <h2>判断该不该买</h2>
  <p>首发刚出、评价少 → 等；上市半年+、好评多、接近史低 → 入手。DLC 多的等「完全版」捆绑打折。</p>
  <div class="note">退款规则：购买 14 天内、游玩不到 2 小时可退，试错成本极低。</div>
"@ ""

# ---- 5. 2026 显卡怎么选 ----
$t5 = Build-Article "2026 显卡怎么选：按预算与用途闭眼入" "2026 年显卡选购指南：1080P/2K/4K 三档对应型号、显存怎么看、新手避坑，附联盟清单。" "高客单" "6 分钟" @"
  <p>显卡是整机里最贵、也最影响体验的部件。先问自己两个问题：<strong>玩什么分辨率</strong> + <strong>预算上限</strong>。</p>
  <h2>1080P 甜点</h2>
  <p>多数网游与单机中画质流畅，选主流中端卡即可，别为 4K 显卡多花钱用不上。</p>
  <h2>2K 主力</h2>
  <p>27 寸 2K 是当前主流，需要更强的中高端卡。看准显存，2026 年新作 8G 起步才安心。</p>
  <h2>4K 高刷</h2>
  <p>预算充足上旗舰，但注意电源和散热要配套，整机预算别只给显卡。</p>
  <h2>避坑</h2>
  <p>别只看显存数字，架构和带宽同样重要；矿卡/二手水深，新手优先全新带保。</p>
"@ (Aff-Box "显卡")

# ---- 6. 三档电脑配置单 ----
$t6 = Build-Article "5000/8000/12000 三档电脑配置单（2026 版）" "2026 年三档台式机配置单：5000 入门、8000 甜点、12000 高端，含显卡优先级与避坑。" "高客单" "7 分钟" @"
  <p>装机原则：<strong>显卡优先级最高</strong>，其次 CPU 别拖后腿，电源留余量，其余能省则省。</p>
  <h2>5000 档：能玩即可</h2>
  <p>把钱压在显卡上，CPU 选主流六核，16G 内存起步。1080P 中高画质通吃。</p>
  <h2>8000 档：甜点之选</h2>
  <p>2K 高画质主力配置。显卡升一档，CPU 不瓶颈，电源 650W 以上。</p>
  <h2>12000 档：高端畅玩</h2>
  <p>4K/高刷向。显卡旗舰级，32G 内存，散热与电源别省，整机均衡。</p>
  <div class="note">避坑：别在机箱灯效、洋品牌内存上多花钱；预算留给显卡和电源最值。</div>
"@ (Aff-Box "台式机配件")

# ---- 7. 手游转 PC 玩什么 ----
$t7 = Build-Article "手游玩家转 PC 单机：按你喜欢的手游类型挑" "从手游转 PC 单机玩什么？按 MOBA/卡牌/开放世界/音游四类，平滑过渡到合适的 PC 游戏。" "推荐" "5 分钟" @"
  <p>手游玩腻了想换平台？先想清楚你在手游里<strong>真正喜欢的那点爽感</strong>，再找对应 PC 作。</p>
  <h2>喜欢 MOBA/竞技</h2>
  <p>转到 PC 竞技作，操作和深度都上一个台阶，社区也更成熟。</p>
  <h2>喜欢卡牌/策略</h2>
  <p>PC 上有大量深度策略与肉鸽，碎片时间也能玩，性价比极高。</p>
  <h2>喜欢开放世界/养成</h2>
  <p>PC 大作的世界观和画质是手游给不了的，一次沉浸几十小时。</p>
  <h2>喜欢音游/休闲</h2>
  <p>PC 模拟经营和休闲作最治愈，配手柄或键鼠都行。</p>
  <div class="note">过渡建议：先玩你手游类型的「PC 同源作」，熟悉成本最低。</div>
"@ ""

# ---- 8. 游戏存储 SSD 还是 HDD ----
$t8 = Build-Article "游戏存储：SSD 还是 HDD？2026 年怎么搭配最划算" "游戏装 SSD 还是 HDD？加载速度、容量、价格的取舍，给出 2026 年性价比搭配方案。" "对比" "4 分钟" @"
  <p>现代游戏越来越大、也越吃加载速度。存储怎么配，影响日常爽不爽。</p>
  <h2>SSD：必须</h2>
  <p>系统和常玩游戏装 NVMe SSD，加载快、不卡读盘。2026 年新作装在 HDD 会出现长读条甚至卡顿。</p>
  <h2>HDD：仓库盘</h2>
  <p>不常玩、体积大的老游戏放 HDD 当冷备份，单价低、容量大，省 SSD 钱。</p>
  <h2>搭配方案</h2>
  <p>1T~2T NVMe 装系统和热门作 + 4T 以上 HDD 存冷门。别全上 SSD，性价比低。</p>
  <div class="note">避坑：买 SSD 看真实写入速度和保修，别只看标称顺序读速。</div>
"@ ""

# 写出文件
$map = @{
  "ps5-vs-xbox-series-x.html"      = $t1
  "pc-games-2026.html"             = $t2
  "best-gaming-monitor-2026.html"  = $t3
  "steam-lowest-price-tools.html"  = $t4
  "gpu-2026-buy-guide.html"        = $t5
  "pc-build-5000-8000-12000.html"  = $t6
  "mobile-to-pc-games.html"        = $t7
  "ssd-vs-hdd-game-storage.html"   = $t8
}
foreach ($k in $map.Keys) {
  $p = Join-Path $art $k
  Set-Content -Path $p -Value $map[$k] -Encoding UTF8 -NoNewline
  Write-Host ("已生成: " + $k + " (" + $map[$k].Length + " 字符)")
}
Write-Host "=== 第二批共 8 篇生成完成 ==="
