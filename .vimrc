" vimの内部文字コードをUTF-8に設定
set encoding=utf-8
" ファイルの文字コードを設定
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
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


" *** ステータスライン系
" 入力中のコマンドをステータスに表示する
set showcmd
" ステータスラインを常に表示
set laststatus=2
" ファイルナンバー表示
" set statusline=[%n]
" ホスト名表示
"set statusline+=%{matchstr(hostname(),'\\w\\+')}@
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


" *** 見た目系
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
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音すべてを無効化し、可視化
set visualbell t_vb=
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない
" 括弧入力時の対応する括弧を表示
set showmatch
" コマンドラインの補完
set wildmode=list:longest
" 矢印キーでは表示行単位で行移動する
nmap <UP> gk
nmap <DOWN> gj
vmap <UP> gk
vmap <DOWN> gj
nnoremap j gj
nnoremap k gk
noremap <Space><CR> o<ESC>
inoremap <silent> jj <ECS> "jjをエスケープにマッピング



" *** Tab系
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
" タブ移動のキーマッピング（tmuxライクに）
nnoremap <C-w> [unite]c :tabnew<CR>
nnoremap <C-w> [unite]n gt
nnoremap <C-w> [unite]p gT


" *** 検索系
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
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" 対応する括弧を強調表示
set showmatch


" *** ファイル編集系
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect
" シンタックスハイライト
syntax on


" *** 見た目系
set background=dark
colorscheme solarized
set noundofile


" *** プラグイン系
" - nerdtree
filetype off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  " insert here your Neobundle plugins
  NeoBundle 'scrooloose/nerdtree' " nerdtree
  call neobundle#end()
endif

filetype plugin indent on

" キーバインド
map <C-n> :NERDTreeToggle<CR>

"set autoindent
"set backupdir=$HOME/vimbackup
"set directory=$HOME/vimbackup
"set smarttab
"nnoremap <ESC><ESC> :nohlsearch<CR>

"syntax enable
