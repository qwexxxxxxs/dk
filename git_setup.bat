@echo off
echo ========================================
echo Git和GitHub上传指南
echo ========================================
echo.

echo 第一步：检查Git是否已安装
git --version
if %errorlevel% neq 0 (
    echo Git未安装，请先安装Git for Windows
    echo 下载地址：https://git-scm.com/download/win
    pause
    exit /b 1
)

echo.
echo 第二步：配置Git用户信息
echo 请替换下面的信息为你的实际信息
echo.
set /p username="请输入你的GitHub用户名: "
set /p email="请输入你的GitHub邮箱: "

git config --global user.name "%username%"
git config --global user.email "%email%"

echo.
echo 第三步：初始化Git仓库
git init

echo.
echo 第四步：添加文件到暂存区
git add .

echo.
echo 第五步：提交文件
git commit -m "Initial commit: Add ViT model implementation"

echo.
echo 第六步：设置主分支
git branch -M main

echo.
echo ========================================
echo 接下来需要手动操作：
echo ========================================
echo 1. 在GitHub上创建新仓库
echo 2. 复制仓库的HTTPS地址
echo 3. 运行以下命令（替换为你的仓库地址）：
echo    git remote add origin https://github.com/你的用户名/你的仓库名.git
echo    git push -u origin main
echo ========================================
echo.

pause
