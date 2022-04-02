"""""""""""""""""""""""""""""""""
""" プラグイン
"""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを以下に列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入
Plugin 'yonchu/accelerated-smooth-scroll'
Plugin 'reireias/vim-cheatsheet'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-expand-region'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'

call vundle#end()

" ファイルタイププラグイン（ファイルの種類に応じて自動で設定を行うようなプラグイン）
filetype plugin indent on

" その他のカスタム設定を以下に書く
"" vim-cheatsheet
let g:cheatsheet#cheat_file = '~/.cheatsheet.md'


"""""""""""""""""""""""""""""""""
""" キーマップ
"""""""""""""""""""""""""""""""""
source ~/.vimrc.keymap


"""""""""""""""""""""""""""""""""
""" 文字コードの設定
"""""""""""""""""""""""""""""""""
" vimのバッファやレジスタなどで使用する文字コード
set encoding=utf-8

" スクリプトで使われている文字コード
scriptencoding=utf-8

" 既存のファイルを開くとき、Vimが使⽤する⽂字コードを判定する順番
" 先頭から順に試される
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp


"""""""""""""""""""""""""""""""""
""" シンタックスハイライト
"""""""""""""""""""""""""""""""""
syntax on


"""""""""""""""""""""""""""""""""
""" ファイル関連
"""""""""""""""""""""""""""""""""
" バックアップファイルを作らない
set nobackup
" ファイルの上書き前にはバックアップファイルを作る
set nowritebackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden


"""""""""""""""""""""""""""""""""
""" ステータスライン
"""""""""""""""""""""""""""""""""
" 入力中のコマンドをステータスに表示する
set showcmd
" ステータスラインを常に表示
set laststatus=2
" ファイル名表示
set statusline+=%<%F
" 変更のチェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" 改行コード表示
let dic_line = { 'dos': 'CRLF', 'unix': 'CR', 'mac': 'LF' }
let f = &fileformat " 改行コード取得
let s = ''
if has_key(dic_line, f)
  let s = dic_line[f]
else
  let s = 'unknonw'
endif
set statusline+=[%{s}]
" 文字コード表示
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
" ファイルタイプ表示
set statusline+=%y


"""""""""""""""""""""""""""""""""
""" 見た目
"""""""""""""""""""""""""""""""""
" 行番号を表示
set number
" ルーラーを表示
set ruler
" コマンドラインの高さ
set cmdheight=1
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" ウィンドウタイトルを設定する
set title
" 矩形選択で行末より後ろもカーソルを置けるように
set virtualedit=block
" インデントはスマートインデント
set smartindent
set autoindent
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
" ターミナル上からの貼り付けを許可
set paste
" フォーマット揃えをコメント以外有効にする
set formatoptions-=c
" ビープ音すべてを無効化し、可視化
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない
" 括弧入力時の対応する括弧を表示
set showmatch
" コマンドラインの補完
set wildmode=list:longest


"""""""""""""""""""""""""""""""""
""" Tab文字
"""""""""""""""""""""""""""""""""
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" キーボードで<TAB>を入力した際に、何文字の空白に変換するか設定
set softtabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


"""""""""""""""""""""""""""""""""
""" 検索
"""""""""""""""""""""""""""""""""
" コマンド、検索パターンを100個まで履歴に残す
set history=100
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 対応する括弧を強調表示
set showmatch


"""""""""""""""""""""""""""""""""
""" 編集
"""""""""""""""""""""""""""""""""
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect


"""""""""""""""""""""""""""""""""
""" テーマ
"""""""""""""""""""""""""""""""""
set background=dark
colorscheme solarized
set noundofile

