" |----------|> Vim Settings <|----------|
syntax on                   " enable syntax
"syntax enable                   " enable syntax
set clipboard=unnamed           " copy to clipboard
set ruler                       " show the position at the bottom
set encoding=utf-8              " default file encoding
set laststatus=2                " the bottom bar always visible
"set mouse=a                    " allows use of mouse
set noshowmode                 " hide mode

" |----------|> Vim Settings => Spaces & Tabs <|----------|
set sw=4                        " change the indentation from tab to spaces
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in tab when editing
set expandtab                   " tabs are spaces

" |----------|> Vim Settings => UI Config <|----------|
set number                      " show line numbers
set numberwidth=4               " line number size
set relativenumber              " line number based on cursor
set showcmd                     " show command in bottom bar
set cursorline                  " highlight current line
set showmatch                   " highlight matching [{()}]

" |----------|> Vim Settings => Searching <|----------|
set incsearch                   " search as characters are entered (incremental searching)
set hlsearch                    " highlight matches
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

" |----------|> Config File <|----------|
so ~/.vim/plugins.vim
so ~/.vim/maps.vim
so ~/.vim/plugin-config.vim

" |----------|> Theme <|----------|
colorscheme dracula

" IMPORTANT NOTES
"" $ python3 -m pip install pynvim 
"" $ pip install jedi

" Reference
" https://github.com/nschurmann/configs
" https://dougblack.io/words/a-good-vimrc.html
