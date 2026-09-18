# 一键提�?sitemap 给搜索引擎（引收录）
# 用法：powershell -ExecutionPolicy Bypass -File submit-seo.ps1
# 前提：已在百�?必应站长平台验证站点所有权

$SiteMap = "https://hgb8816.github.io/game-site/sitemap.xml"

Write-Host "提交 sitemap 到各搜索引擎�?SiteMap"

# 百度（需先在 ziyuan.baidu.com 验证站点�?$baidu = "https://ziyuan.baidu.com/linksubmit/url?site=$SiteMap"
# 必应
$bing  = "https://www.bing.com/indexnow?url=$SiteMap"
# IndexNow（必�?Yandex 通用�?$indexnow = "https://api.indexnow.org/indexnow?url=$SiteMap&key=YOUR_INDEXNOW_KEY"

try { Invoke-WebRequest -Uri $baidu -UseBasicParsing -TimeoutSec 15 | Out-Null; Write-Host "百度: 已提�? } catch { Write-Host "百度: 需手动在站长平台提�?验证" }
try { Invoke-WebRequest -Uri $bing  -UseBasicParsing -TimeoutSec 15 | Out-Null; Write-Host "必应: 已提�? } catch { Write-Host "必应: 提交失败(可忽略，会自动抓�?" }
try { Invoke-WebRequest -Uri $indexnow -UseBasicParsing -TimeoutSec 15 | Out-Null; Write-Host "IndexNow: 已提�? } catch { Write-Host "IndexNow: 需配置 key" }

Write-Host "提示：新站收录慢，每周跑一次本脚本即可。首次务必在站长平台手动验证站点�?
