@echo off
REM ===== 一键部署到 GitHub Pages（需先安装 Git）=====
REM 用法：在 game-site 目录下双击本文件，或命令行执行 deploy.bat
REM 前提：你已在 GitHub 注册账号 hgb8816，并新建了名为 game-site 的空仓库

cd /d %~dp0

echo [1/4] 初始化 git 仓库...
git init
git add .
git commit -m "game-site first deploy"

echo [2/4] 绑定远程仓库...
git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/hgb8816/game-site.git

echo [3/4] 推送到 GitHub...
git push -u origin main

echo [4/4] 完成！
echo 接下来在 GitHub 仓库 Settings - Pages 里，Source 选 main 分支，点 Save。
echo 几分钟后访问：https://hgb8816.github.io/game-site/
pause
