export PATH="/usr/local/Cellar/git/2.6.2/bin:$PATH"
export PATH=$PATH:/usr/local/bin

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.nodebrew/current/bin:$PATH"

export PATH="$HOME/.yarn/bin:$PATH"

source ~/.bashrc
