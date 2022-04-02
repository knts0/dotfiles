# パイプ
alias -g L='| less'
alias -g H='| head' 
alias -g G='| grep' 
alias -g GI='| grep -ri' 

# ls
alias ls='ls -aGF'
alias lst='ls -ltr'
alias l='ls -ltr'
alias la='ls -la'
alias ll='ls -l'
alias gls="gls --color"

# vim
alias vi='nvim'
alias vim='nvim'
alias c='cdr'

# gitエイリアス
alias gb='git branch'
alias gd='git diff'
alias gs='git status'
alias gm='git merge'
alias ga='git add'
alias gps='git push'
alias gpl='git pull'
alias gc='git commit'
alias gcm='git commit -m'
alias gl='git log'
alias gco='git checkout'

# historyに日付を表示
alias h='fc -lt '%F %T' 1'

# コピーや削除時にインタラクティブに実行
alias cp='cp -i'
alias rm='rm -i'

# ディレクトリ作成
alias mkdir='mkdir -p'

alias ..='c ../'

alias back='pushd'
alias diff='diff -U1'
