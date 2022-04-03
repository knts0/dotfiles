# 概要
tmux, vim, zshの設定ファイルを管理している。

## vim
- init.vim：neovimの設定ファイル。ターミナルから使う際や、VSCodeの拡張で使用される。
- .ideavimrc：IntelliJ IDEAのvim拡張の設定ファイル。
- .basevimrc：共通の設定を切り出したもの

プラグインをvim-plugで管理しており、`.vim/bundle`の下にインストールされるようにしている。（このディレクトリ配下はgit ignoreする）

# 新しい環境でやること
## setup.shを実行
```
./setup.sh
```

## Vundleでプラグインを実行
vimを起動→`:PluginInstall`を実行

## brewで必要なツールをインストール
```
# neovim
brew install neovim

# tmux
brew install tmux

# starship
brew install starship

# im-select
brew tap daipeihust/tap && brew install im-select

# fira code
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
```

## ターミナルのプロファイルを変更
[Iceberg](http://cocopon.github.io/iceberg.vim/)

## フォントの設定
等幅フォント・[MyricaM](https://myrica.estable.jp/myricamhistry/)を入れる