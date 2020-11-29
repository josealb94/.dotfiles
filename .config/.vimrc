" |----------|> Content <|----------|
" Vim Settings
" Plugin
" Theme
" Settings
" Commands

" |----------|> Vim Settings <|----------|
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

" |----------|> Plugin Settings <|----------|
" Vim plugin manager: vim-plug
" junegunn/vim-plug => https://github.com/junegunn/vim-plug#
call plug#begin('~/.vim/plugged')
" |----------|> Plugin => Theme <|----------|
Plug 'dracula/vim', { 'as': 'dracula' }
" |----------|> Plugin => IDE <|----------|
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
" |----------|> Plugin => NCM2 autocomplete plugin <|----------|
" https://github.com/ncm2/ncm2
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" Fast python completion (use ncm2 if you want type info or snippet support)
"Plug 'HansPinckaers/ncm2-jedi'
Plug 'ncm2/ncm2-jedi'
" Words in buffer completion
Plug 'ncm2/ncm2-bufword'
" Filepath completion
Plug 'ncm2/ncm2-path'
" |----------|> Plugin => lightline.vim <|----------|
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'
" |----------|> Plugin => fugitive.vim <|----------|
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'
" |----------|> Plugin => fugitive.vim <|----------|
" https://github.com/mg979/vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

" |----------|> Theme <|----------|
colorscheme dracula

" |----------|> Settings <|----------|
" |----------|> Settings => For plugins with Python3 <|----------|
let g:python3_host_prog = '/usr/bin/python3'

" |----------|> Settings => NERDTree <|----------|
" Close NerdTree when opening a file
let NERDTreeQuitOnOpen=1

" |----------|> Settings => NCM2 <|----------|
" IMPORTANT: :help Ncm2PopupOpen for more information
" Enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
" Suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
set shortmess+=c
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
inoremap <c-c> <ESC>
" Make it fast
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
" Use new fuzzy based matches
let g:ncm2#matcher = 'substrfuzzy'
" Disable Jedi-vim autocompletion and enable call-signatures options
let g:jedi#auto_initialization = 1
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = ""
let g:jedi#show_call_signatures = "1"

" |----------|> Settings => lightline.vim <|----------|
let g:lightline = {'colorscheme': 'wombat',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'readonly', 'filename', 'gitbranch' ] ], 
\   'right': [ [ 'lineinfo' ],
\              [ 'percent' ],
\              [ 'modified', 'fileformat', 'fileencoding', 'filetype', ] ]
\ },
\ 'component_function': {
\   'gitbranch': 'FugitiveHead'
\ },
\ }

" |----------|> Settings => Colors <|----------|
if !has('gui_running')
  set t_Co=256
endif

" |----------|> Commands <|----------|
let mapleader=" "

" |----------|> Commands => Easymotion <|----------|
nmap <Leader>s <Plug>(easymotion-s2)

" |----------|> Commands => NERDTree <|----------|
nmap <Leader>nt :NERDTreeFind<CR>

" |----------|> Commands => Custom <|----------|
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>e :wq<CR>

" IMPORTANT NOTES
"" $ python3 -m pip install pynvim 
"" $ pip install jedi
