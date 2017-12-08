set encoding=utf-8
scriptencoding utf-8

" default indenting behaviour
" tab = 4 spaces
" spaces for indentation
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set expandtab

" show invisible characters
set list
set listchars=tab:»-,trail:~,extends:»,precedes:«,nbsp:⣿

" syntax hightlighting
syntax on

" line numbers
set number

" maintain undo history
set undofile
set undodir=~/.vim/undo
set noswapfile

" no startup message
set shortmess+=I

" highlight search
:set hlsearch
:set incsearch

" plugins
call plug#begin('~/.vim/plugged')

Plug 'valloric/youcompleteme'
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'rdnetto/ycm-generator'

call plug#end()

" solarized colors
syntax enable
set background=dark
colorscheme solarized

