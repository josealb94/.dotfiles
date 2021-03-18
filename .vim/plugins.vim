" |----------|> plugin settings 
" Vim plugin manager: vim-plug
" junegunn/vim-plug ==> https://github.com/junegunn/vim-plug#
call plug#begin('~/.vim/plugged')

" |----------|> theme  
Plug 'dracula/vim', { 'as': 'dracula' }

" |----------|> syntax  
" https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'                         " check syntax | TODO  learn to use

" |----------|> status bar  
" https://github.com/maximbaz/lightline-ale         "TODO learn to use
Plug 'maximbaz/lightline-ale'
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" |----------|> tree  
" https://github.com/preservim/nerdtree
Plug 'scrooloose/nerdtree'                          " file browser

" |----------|> typing  
" https://github.com/jiangmiao/auto-pairs
Plug 'jiangmiao/auto-pairs'                        
" https://github.com/alvan/vim-closetag
Plug 'alvan/vim-closetag'                           " close tags
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'                           " surround easily text with quotes, parentheses, etc

" |----------|> tmux  
" https://github.com/preservim/vimux
"Plug 'benmills/vimux'                              " TODO learn to use
" https://github.com/christoomey/vim-tmux-navigator
Plug 'christoomey/vim-tmux-navigator'				" navigate between vim panes

" |----------|> autocomplete  
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" |----------|> test  
"Plug 'tyewang/vimux-jest-test'
"Plug 'janko-m/vim-test'

" |----------|> ide  
" https://github.com/easymotion/vim-easymotion
Plug 'easymotion/vim-easymotion'
"Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'mhinz/vim-signify'
"Plug 'yggdroot/indentline'
"Plug 'scrooloose/nerdcommenter'

" |----------|> git  
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" Show git diff on the numbers column
Plug 'airblade/vim-gitgutter'

" https://github.com/mg979/vim-visual-multi
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" |----------|> ncm2 autocomplete plugin  
" Languages NCM2: https://github.com/ncm2/ncm2/wiki
" https://github.com/ncm2/ncm2
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"" Python >> Plug 'HansPinckaers/ncm2-jedi'
"Plug 'ncm2/ncm2-jedi'

" Words in buffer completion
"Plug 'ncm2/ncm2-bufword'
" Filepath completion
"Plug 'ncm2/ncm2-path'

call plug#end()

