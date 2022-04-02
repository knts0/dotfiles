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
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'   " git plugin

call vundle#end()

" ファイルタイププラグイン（ファイルの種類に応じて自動で設定を行うようなプラグイン）
filetype plugin indent on

" その他のカスタム設定を以下に書く
"" vim-cheatsheet
let g:cheatsheet#cheat_file = '~/.cheatsheet.md'


"""""""""""""""""""""""""""""""""
""" ベース設定の読み込み
""""""""""""""""""""""""""""""""
source ~/.basevimrc
