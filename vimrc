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
set mouse=a
set scrolloff=5

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
Plug 'tomasr/molokai'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdtree'

call plug#end()

" nerdtree autostart on directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" solarized colors
syntax enable
colorscheme molokai
let g:molokai_original=1

" column at 80 characters
set colorcolumn=80
