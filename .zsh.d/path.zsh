# パス
export PATH=$PATH:/usr/local/bin/
export PATH=/usr/local/mysql/bin:${PATH}
export PATH=/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:${PATH}

### 言語等の設定
# nodenv
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# yvm
export YVM_DIR="$HOME/.yvm"
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# rbenv
export PATH="$HOME/.rbenv/shims:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
if [ -f "$HOME/.pyenv" ]; then eval "$(pyenv init -)"; fi

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
if [ -f "$HOME/.anyenv" ]; then eval "$(anyenv init -)"; fi

# java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`


### ツール系
# android studio
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:$PATH"

# grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/grep/libexec/gnuman:$MANPATH"

# Google Cloud SDK
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

# VSCode
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
