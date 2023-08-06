# パス
export PATH=$PATH:/usr/local/bin/
export PATH=/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:${PATH}

### 言語等の設定
# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
if [ -e "$HOME/.nodenv" ]; then eval "$(nodenv init -)"; fi

# yvm
export YVM_DIR="$HOME/.yvm"
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
if [ -f "$HOME/.anyenv" ]; then eval "$(anyenv init -)"; fi

# grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/grep/libexec/gnuman:$MANPATH"

# VSCode
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# starship
eval "$(starship init zsh)"

# direnv
eval "$(direnv hook zsh)"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
