export ZSH=/usr/share/oh-my-zsh/
export QT_QPA_PLATFORMTHEME=qt5ct
ZSH_THEME="candy"
plugins=(rails git textmate ruby lighthouse zsh-navigation-tools zsh-autosuggestions vi-mode command-not-found safe-paste colored-man-pages)
source $ZSH/oh-my-zsh.sh
export PAGER='most'
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
setopt GLOB_DOTS
unsetopt SHARE_HISTORY

# if not running interactively,don't do anything

export HISTCONTROL=ignoreboth:erasedups

#make nvim the default editor 
export EDITOR='nvim'
export VISUAL='nvim'

# set proxy
alias setproxy="export ALL_PROXY=socks5://127.0.0.1:7890"
alias unsetproxy="unset All_PROXY"
alias vi="nvim"

# make ex the extractor for all kinds of archives
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
neofetch
