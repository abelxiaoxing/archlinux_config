#!/bin/bash
sh SystemChange.sh&
# 修改镜像源,修改zsh配置
package_list=(
    openssh
    # ssh服务
    neovim
    # 文本编辑器
    wl-clipboard
    # neovim的wayland剪贴板
    grub-customizer
    # grub引导器
    htop
    # 系统进程监测
    polkit
    # 用于控制系统范围的权限,wayland环境下不安装将无法启动,x11环境下可以不装
    rofi 
    # x11下精美程序启动器
    dmenu 
    # x11下轻量程序驱动器
    catfish 
    # 文件搜索查找
    yazi 
    # 命令行形式的文件管理器
    qt5ct 
    # qt5的主题适配工具,很多界面都是由它配置的例如dolphin
    lxappearance 
    # gtk主题适配工具,很多界面都是由它配置的例如thunar
    flameshot-git 
    # x11下截图工具
    grimblast-git 
    # wayland截图工具
    sddm 
    # 一种精美的Display Manager,由它来启动桌面
    dunst 
    # 通知器(配合pamixer控制音量发声)
    pamixer 
    # 音量控制软件
    pipewire 
    # 音频和视频管理
    waybar 
    # wayland下的bar
    swaybg 
    # wayland下更换壁纸
    swww
    # wayland下动态更换壁纸
    wofi 
    # wayland下精美程序启动器
    swaylock 
    # 锁屏
    bemenu-wayland 
    # wayland下轻量的程序启动器
    wlogout 
    # wayland下锁屏,重启,关机,注销
    xorg 
    # 安装Display Server
    light 
    # 亮度调整软件
    acpilight 
    # 基于ACPIde xbacklight替换
    thunar 
    # gtk文件管理器
    foot
    # wayland下终端
    dolphin 
    # qt文件管理器
    breeze-icons
    breeze
    # dolphin中的breeze图标
    # 微风图标
    variety 
    # x11下壁纸更换软件,图形化配置策略
    feh 
    # x11下壁纸更换软件,命令行自行定义
    i3lock-color 
    # x11下超美锁屏
    i3-gaps 
    # i3桌面窗口美化
    polybar 
    # x11下的bar
    picom 
    # x11下透明化
    autotiling 
    # 平铺桌面下智能分割窗口
    network-manager-applet 
    # x11的bar下网络控件
    numlockx 
    # 小键盘控制
    hyprutils
    # hyprland依赖组件
    hyprland
    # wayland下超美桌面
    conky 
    # 系统信息监测
    blueberry 
    # x11的bar下蓝牙控件
    volumeicon 
    # 音量管理
    alsa-utils
    #amixer音频管理
    alacritty 
    # 支持gpu渲染的终端,wayland下无法输入中文,建议用kitty或者konsole代替
    fcitx5-im 
    # fcitx5输入法主程序
    fcitx5-chinese-addons 
    # fcitx5中文插件
    fcitx5-pinyin-zhwiki 
    # fcitx5中文词库
    fcitx5-material-color 
    fcitx5-nord 
    # fcitx5皮肤
    firefox
    # 浏览器
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
    adobe-source-han-sans-cn-fonts 
    ttf-jetbrains-mono 
    # 多种字体
    wps-office-cn 
    wps-office-mui-zh-cn 
    ttf-wps-fonts 
    # wps办公
)

# 循环遍历列表，安装每一个包
for package in "${package_list[@]}"; do
    # 如果该行是注释，则跳过
    [[ "$package" =~ ^# ]] && continue
    echo "Installing $package ..."
    paru --noconfirm --needed -S "$package" \
    && echo "$package installed successfully." \
    || echo "Error installing $package"
done


bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
