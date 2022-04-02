"""""""""""""""""""""""""""""""""
""" プラグイン
"""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

call plug#end()


"""""""""""""""""""""""""""""""""
""" ベース設定の読み込み
"""""""""""""""""""""""""""""""""
source $HOME/dotfiles/.basevimrc