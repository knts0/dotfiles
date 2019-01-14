export PATH=/Applications/gnuplot.app:/Applications/gnuplot.app/bin:$PATH
export PATH=/Applications/Xpdf.app:/Applications/Xpdf.app/bin:$PATH

export UNAME=Darwin

alias ls='ls -G'
alias ll='ls -hl'
alias vi='vim'

export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

export LANG=ja_JP.UTF-8
export XMODIFIERS=@im=uim
export GTK_IM_MODULE=uim

source /usr/local/Cellar/git/2.6.2/etc/bash_completion.d/git-prompt.sh
source /usr/local/Cellar/git/2.6.2/share/zsh/site-functions/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

