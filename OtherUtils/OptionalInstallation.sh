#!/bin/bash
package_list=(
    fastfetch 
    # 系统信息显示
    arc-kde-git 
    # 桌面主题
    kvantum 
    # qt美化
    archlinux-logout-git 
    archlinux-logout-themes-git 
    # arch锁屏功能
    sddm-config-editor-git 
    # sddm图形化界面编辑
    nerd-fonts-source-code-pro 
    adobe-source-han-sans-cn-fonts 
    adobe-source-han-sans-tw-fonts 
    adobe-source-han-sans-hk-fonts 
    adobe-source-han-serif-cn-fonts 
    adobe-source-han-serif-tw-fonts 
    adobe-source-han-serif-hk-fonts 
    noto-fonts-sc 
    noto-fonts-tc 
    ttf-jetbrains-mono 
    wqy-microhei 
    wqy-zenhei 
    opendesktop-fonts 
    # 多种字体
    wps-office-cn 
    wps-office-mui-zh-cn 
    ttf-wps-fonts 
    # wps办公
    netease-cloud-music 
    # 网易云音乐
    visual-studio-code-bin 
    # 最强ide
    deepin-wine-wechat 
    # 微信
    microsoft-edge-stable-bin
    # edge浏览器
)
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

# 循环遍历列表，安装每一个包
for package in "${package_list[@]}"; do
    # 如果该行是注释，则跳过
    [[ "$package" =~ ^# ]] && continue
    echo "Installing $package ..."
    paru --noconfirm --needed -S "$package" \
    && echo "$package installed successfully." \
    || echo "Error installing $package"
done