# Vision Transformer (ViT) 模型

这是一个基于PyTorch实现的Vision Transformer模型。

## 如何将项目上传到GitHub

### 第一步：安装Git

1. 访问 https://git-scm.com/download/win
2. 下载并安装Git for Windows
3. 安装时使用默认设置即可

### 第二步：配置Git

安装完成后，打开PowerShell或命令提示符，运行以下命令：

```bash
# 设置你的用户名（替换为你的GitHub用户名）
git config --global user.name "你的GitHub用户名"

# 设置你的邮箱（替换为你的GitHub邮箱）
git config --global user.email "你的邮箱@example.com"
```

### 第三步：在GitHub上创建仓库

1. 登录 https://github.com
2. 点击右上角的 "+" 号，选择 "New repository"
3. 填写仓库名称（例如：vit-model）
4. 选择 "Public" 或 "Private"
5. 不要勾选 "Initialize this repository with a README"
6. 点击 "Create repository"

### 第四步：初始化本地Git仓库

在你的项目文件夹中打开PowerShell，运行：

```bash
# 初始化Git仓库
git init

# 添加所有文件到暂存区
git add .

# 提交文件
git commit -m "Initial commit: Add ViT model implementation"
```

### 第五步：连接远程仓库

```bash
# 添加远程仓库（替换为你的GitHub仓库地址）
git remote add origin https://github.com/你的用户名/你的仓库名.git

# 推送到GitHub
git push -u origin main
```

### 第六步：验证上传

访问你的GitHub仓库页面，确认文件已成功上传。

## 项目文件说明

- `vit_model.py`: Vision Transformer模型的完整实现
- `README.md`: 项目说明文档

## 使用方法

```python
import torch
from vit_model import vit_base_patch16_224

# 创建模型
model = vit_base_patch16_224(num_classes=1000)

# 使用模型
x = torch.randn(1, 3, 224, 224)  # 输入图像
output = model(x)
print(output.shape)  # torch.Size([1, 1000])
```

## 注意事项

- 确保已安装PyTorch
- 模型需要输入224x224的图像
- 支持不同的ViT变体（Base、Large、Huge等）
