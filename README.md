# 概要
tmux, vim, zshの設定ファイルを管理している。

vimについては、プラグインをVundleで管理しており、`.vim/bundle`の下にインストールされるようにしている。（プラグイン自体はgit管理しない）

# 新しい環境でやること
## setup.shを実行
```
./setup.sh
```

## Vundleでプラグインを実行
vimを起動→`:PluginInstall`を実行

## brewでtmuxをインストール
```
brew install tmux
```

## ターミナルのプロファイルを変更
[Iceberg](http://cocopon.github.io/iceberg.vim/)

## フォントの設定
等幅フォント・[MyricaM](https://myrica.estable.jp/myricamhistry/)を入れる