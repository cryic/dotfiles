set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'bling/vim-airline'
Bundle 'janx/vim-rubytest'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'skwp/greplace.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'rking/ag.vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

filetype plugin indent on 
syntax on

set t_Co=256
"set guifont=Hermit:h13
set guifont=Inconsolata:h14
let mapleader = ","
colorscheme github

set incsearch
set ignorecase
set smartcase
set hls
set number
set autoindent

autocmd Filetype ruby set shiftwidth=2

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

set backspace=indent,eol,start

nmap <Leader>E :e!<CR>
nmap <Leader>e :e 
nmap <Leader>h :noh<CR>
nmap <Leader>i <C-i>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>o <C-o>
nmap <Leader>w :w<CR>

inoremap jk <ESC>

set list listchars=tab:\|_,trail:·
set mouse=a
