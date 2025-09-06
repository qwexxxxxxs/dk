"""
Vision Transformer (ViT) 使用示例
"""
import torch
from vit_model import vit_base_patch16_224, vit_large_patch16_224

def main():
    # 创建ViT-Base模型
    print("创建ViT-Base模型...")
    model_base = vit_base_patch16_224(num_classes=1000)
    print(f"ViT-Base参数量: {sum(p.numel() for p in model_base.parameters()):,}")
    
    # 创建ViT-Large模型
    print("\n创建ViT-Large模型...")
    model_large = vit_large_patch16_224(num_classes=1000)
    print(f"ViT-Large参数量: {sum(p.numel() for p in model_large.parameters()):,}")
    
    # 测试模型
    print("\n测试模型...")
    x = torch.randn(2, 3, 224, 224)  # 2张224x224的RGB图像
    
    with torch.no_grad():
        # ViT-Base
        output_base = model_base(x)
        print(f"ViT-Base输出形状: {output_base.shape}")
        
        # ViT-Large
        output_large = model_large(x)
        print(f"ViT-Large输出形状: {output_large.shape}")
    
    print("\n模型测试完成！")

if __name__ == "__main__":
    main()
