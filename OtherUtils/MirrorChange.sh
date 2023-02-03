#!/bin/bash
sudo cp -rf ~/.config/OtherUtils/zshrc ~/.zshrc
# 修改zsh配置
sudo cp -rf ~/.config/OtherUtils/pacman.d/* /etc/pacman.d/
# 更改mirrorlist镜像
sudo cp -rf ~/.config/OtherUtils/pacman.conf /etc/pacman.conf
# 设置pacman策略
sudo pacman -Sy archlinuxcn-keyring paru
# 安装archlinuxcn密钥和aur包管理器(paru基于rust,yay基于go,paru性能更好)
