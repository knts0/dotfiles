# 概要
tmux, vim, zshの設定ファイルを管理している。

## tmux
プラグイン管理にtpmを使用。

### 注意
tmux-mem-cpu-loadプラグインの実行ファイル作成に`cmake`が必要なので、もし入っていなければbrew等で入れる。

## vim
- init.vim：neovimの設定ファイル。ターミナルから使う際や、VSCodeの拡張で使用される。
- .ideavimrc：IntelliJ IDEAのvim拡張の設定ファイル。
- .basevimrc：共通の設定を切り出したもの

プラグインをvim-plugで管理しており、`.vim/bundle`の下にインストールされるようにしている。（このディレクトリ配下はgit ignoreする）

## zsh
zinitでプラグイン管理

# 新しい環境でやること
## setup.shを実行
```
./setup.sh
```

## neovimプラグインをインストール
neovimを起動→`:PlugInstall`を実行

## brewで必要なツールをインストール
```
# neovim
brew install neovim

# vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tmux
brew install tmux

# starship
brew install starship

# im-select
brew tap daipeihust/tap && brew install im-select

# fira code
brew tap homebrew/cask-fonts
brew install --cask font-fira-code

# zinitのインストール
sh -c "$(curl -fsSL https://git.io/zinit-install)"
zinit self-update

# fzf
brew install fzf
```

## ターミナルのプロファイルを変更
[Iceberg](http://cocopon.github.io/iceberg.vim/)

## フォントの設定
等幅フォント・[MyricaM](https://myrica.estable.jp/myricamhistry/)を入れる