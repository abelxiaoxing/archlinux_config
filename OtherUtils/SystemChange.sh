#!/bin/bash
sudo cp -rf ./zshrc ~/.zshrc
sudo cp -rf ./pacman.d/* /etc/pacman.d/
sudo cp -rf ./pacman.conf /etc/pacman.conf
sudo cp -rf ./paru.conf /etc/paru.conf
sudo pacman -Sy --noconfirm --needed archlinuxcn-keyring paru
sudo pacman -S --noconfirm --needed oh-my-zsh-git
# 安装archlinuxcn密钥和aur包管理器(paru基于rust,paru基于go,paru性能更好)
sudo cp -rf ~/.config/OtherUtils/zsh-autosuggestions /usr/share/oh-my-zsh/plugins/ &
sudo cp -rf ~/.config/OtherUtils/zsh-syntax-highlighting /usr/share/oh-my-zsh/plugins/ &
# oh-my-zsh的自动补全和语法高亮插件
