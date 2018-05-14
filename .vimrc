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
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-rails'
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-endwise'
Plugin 'BurntSushi/ripgrep'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
Plugin 'fatih/vim-go'

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

" escape with jj
inoremap jj <Esc>

"tell the term has 256 colors
set t_Co=256

"hide buffers when not displayed
set hidden

" resizing
nnoremap <C-w>> 10<C-w>>
nnoremap <C-w>< 10<C-w><
nnoremap <C-w>+ 10<C-w>+
nnoremap <C-w>- 10<C-w>

" run GoBuild with ctrl+b
map <C-b> :GoBuild<CR>

" run GoRun with ctrl+n
map <C-n> :GoRun<CR>

" run GoTest with ctrl+t
map <C-m> :GoTest<CR>

" run NerdTreeToggle with ctrl+m
map <C-l> :NERDTreeToggle<CR>

" ignore node_modules with ctrl+p
set wildignore+=*/node_modules/*,*/deps/*

" indent line customization
set conceallevel=1
let g:indentLine_conceallevel=1
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

map <C-p> :Files<CR>

" easymotion
map ff <Leader><Leader>w

