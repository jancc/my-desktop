set encoding=utf-8
scriptencoding utf-8

" default indenting behaviour
" tab = 4 spaces
" tabs for indentation
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

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
