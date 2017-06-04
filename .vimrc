set nocompatible
filetype off " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" List of Plugins installed starts here
Plugin 'tpope/vim-sensible'
Plugin 'vim-ruby/vim-ruby'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-endwise'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-commentary'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"allow backspacing over everything in insert mode
set backspace=indent,eol,start

"store lots of :cmdline history
set history=1000

set number      "show line numbers

"display tabs and trailing spaces
set list
set listchars=tab:▷⋅,trail:⋅,nbsp:⋅

set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set ignorecase!  " Ignore case in search

set wrap        "dont wrap lines
set linebreak   "wrap lines at convenient points

" using bash as shell so the PATH is set correctly
set shell=/bin/bash

"default indent settings
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"turn on syntax highlighting
syntax on

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden

" resizing
nnoremap <C-w>> 10<C-w>>
nnoremap <C-w>< 10<C-w><
nnoremap <C-w>+ 10<C-w>+
nnoremap <C-w>- 10<C-w>

" load NERDTree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" open NERDTreeFind with ctrl+b
map <C-b> :NERDTreeFind<CR>

" ignore node_modules with ctrl+p
set wildignore+=*/node_modules/*,*/deps/*

" Allow ctrl+p to work with Shopify lol
let g:ctrlp_max_files = 50000
