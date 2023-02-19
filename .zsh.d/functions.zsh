# mkdirとcdを同時実行
function mkcd() {
  if [[ -d $1 ]]; then
    echo "$1 already exists!"
    cd $1
  else
    mkdir -p $1 && cd $1
  fi
}

select-history() {
  # コマンドの実行履歴をfzfで選択し、コマンドラインへ書き込む
  BUFFER=$(history -n -r 1 | fzf --query "$BUFFER")
  # カーソルをコマンドラインの右端に移動
  CURSOR=$#BUFFER
}