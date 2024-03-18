
## 配置文件介绍
1. 提供了多种配置好统一快捷键的工作环境，比如wayfire,i3,hyprland,xfce4,dwm,lefwwm（个人推荐wayfire和i3。其中个人喜欢纯键盘工作,hyprland的bug多一些，xfce4效率低一些，dwm和leftwm又仅做了快捷键适配，补丁较少接近原版）  
2. 已完成一些美化工作，仅个人癖好  
3. 已完成一些快捷型的脚本，例如wayfire环境下的waybar插件  
4. 快捷键查看处  
   + i3: ~/.config/i3/config/config
   + hyprland: ~/.config/hypr/hyprland.ini
   + dwm: ~/.config/dwm/
   + xfce: 去图形化界面里面自行设置

## 下载安装相关配置文件
1. 下载并且进入下载目录（github偶尔抽风，网络实在不行就去浏览器下载，网址https://github.com/abelxiaoxing/.config)  
`git clone https://github.com/abelxiaoxing/archlinux_config.git ~/Downloads/abelxiaoxing_config_tmp/.config && cd ~/Downloads/abelxiaoxing_config_tmp/.config/`  
2. 移动并且覆盖重复文件,删除下载临时文件夹  
`mv -f * ~/.config/ && cd ~/.config/OtherUtils`  
`rm -rf ~/Downloads/abelxiaoxing_config_tmp`  
3. 执行自动安装脚本  
`sh autostart.sh`  
4. 安装好clash后配置好科学上网（自行搭建,本文不提供教程），终端输入setproxy开启终端代理后执行额外组建安装  
`yay clash-for-windows`  
`sh OptionalInstallation.sh`  
## 配置主题与界面  
### kvantum环境配置  
`yay -S kvantum-theme-arc`  
+ 打开kvantum,应用arc-dark主题
### 解决dolphin等界面问题  
+ 修改/etc/profile文件  
`sudo nvim /etc/profile`  
+ 并且添加以下内容  
`export QT_STYLE_OVERRIDE=kvantum`  
