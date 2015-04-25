set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'janx/vim-rubytest'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'burnettk/vim-angular'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'scrooloose/syntastic'
Plugin 'skwp/greplace.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'rking/ag.vim'
Plugin 'rizzatti/funcoo.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'endel/vim-github-colorscheme'

call vundle#end()
filetype plugin indent on 
syntax on

set t_Co=256
set guifont=InputMono-Regular:h13
set linespace=2
let mapleader = ","
colorscheme github

set incsearch
set ignorecase
set smartcase
set hls
set number
set autoindent

set shiftwidth=2

set tabstop=2
"use spaces instead of tabs
set expandtab

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:vimfiler_as_default_explorer = 1

set backspace=indent,eol,start

nmap <Leader>E :e!<CR>
nmap <Leader>e :e 
nmap <Leader>h :noh<CR>
nmap <Leader>i <C-i>
nmap <Leader>n :VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit<CR>
nmap <Leader>o <C-o>
nmap <Leader>w :w<CR>

inoremap jk <ESC>

set list listchars=tab:\|_,trail:·
set mouse=a
