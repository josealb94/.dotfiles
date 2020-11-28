"" Line Number
set number
"" Line number size
set numberwidth=1
"" Copy to clipboard
set clipboard=unnamed
"" Enable syntax
syntax enable
"" Shows the commands executed
set showcmd
"" Show the position at the bottom
set ruler
"" Default file encoding
set encoding=utf-8
"" Indicates the corresponding element that closes - ([{
set showmatch
"" Change the indentation from tab to spaces
set sw=2
"" Line number based on cursor
set relativenumber
"" The bottom bar always visible
set laststatus=2
"" Allows use of mouse
"set mouse=a
"" Hide mode
"set noshowmode

" Vim plugin manager: vim-plug
""  junegunn/vim-plug => https://github.com/junegunn/vim-plug#
call plug#begin('~/.vim/plugged')

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

colorscheme dracula
" Close NerdTree when opening a file
let NERDTreeQuitOnOpen=1

" easymotion
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)

" nerdtree
nmap <Leader>nt :NERDTreeFind<CR>

" Custom commands
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
