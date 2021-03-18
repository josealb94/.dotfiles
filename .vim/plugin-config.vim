" |----------|> for plugins with Python3 
"let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/bin/python3'

" |----------|> polyglot 
let g:javascript_plugin_flow = 1
let g:python_highlight_all = 1
"TODO check
set signcolumn=yes

" |----------|> lightline.vim 
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'relativepath', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'filetype', 'percent' ],
    \              ['gitbranch']]
    \ },
    \ 'inactive': {
    \   'left': [['inactive'], ['relativepath']],
    \   'right': [['bufnum']]
    \ },
    \ 'component': {
    \   'bufnum': '%n',
    \   'inactive': 'inactive'
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ 'subseparator': {
    \   'left': '',
    \   'right': ''
    \ }
    \ }

" |----------|> nerdtree 
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
"let NERDTreeMapOpenInTab='\t'

" |----------|> closetag
let g:closetag_filenames = '*.html,*.xhtml,*.tmpl,*.md'

" |----------|> ultisnips
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<C-space>"
let g:UltiSnipsJumpForwardTrigger="<C-space>"
let g:UltiSnipsJumpBackwardTrigger="<S-space>"

" |----------|> coc.nvim 
"""Important Install
""" npm install -g neovim
""" sudo pip3 install -U jedi
""" sudo pip3 install pylint
" TextEdit might fail if hidden is not set.
set hidden
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Extensions
let g:coc_global_extensions = [
    "\ 'coc-word',
    "\ 'coc-syntax',
    "\ 'coc-dictionary',
    \ 'coc-snippets',
    "\ 'coc-emoji',
    \ 'coc-json',
    "\ 'coc-yaml',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-python',
    "\ 'coc-rls',
    \ 'coc-tsserver',
    "\ 'coc-tag',
    "\ 'coc-clangd',
    "\ 'coc-sh',
    "\ 'coc-java',
    "\ 'coc-sql',
    "\ 'coc-xml',
    "\ 'coc-flutter',
    "\ 'coc-go',
    "\ 'coc-markdownlint',
    \]

" |----------|> fzf
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang ProjectsFiles
    \ call fzf#vim#files('~/Documentos/Desarrollo/Proyectos', fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir GFiles
    \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
    \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

" |----------|> fugitive
set diffopt+=vertical

" |----------|> nerdtree 
" |----------|> nerdtree 
" |----------|> nerdtree 
" |----------|> nerdtree 



" |----------|> NCM2 
" IMPORTANT: :help Ncm2PopupOpen for more information
" Enable ncm2 for all buffers
"autocmd BufEnter * call ncm2#enable_for_buffer()
"autocmd BufEnter * call ncm2#enable_for_buffer()
"set completeopt=menuone,noselect,noinsert
" Suppress the annoying 'match x of y', 'The only match' and 'Pattern not found' messages
"set shortmess+=c
" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
"inoremap <c-c> <ESC>
" Make it fast
"let ncm2#popup_delay = 5
"let ncm2#complete_length = [[1, 1]]
" Use new fuzzy based matches
"let g:ncm2#matcher = 'substrfuzzy'
" Disable Jedi-vim autocompletion and enable call-signatures options
"let g:jedi#auto_initialization = 1
"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#smart_auto_mappings = 0
"let g:jedi#popup_on_dot = 0
"let g:jedi#completions_command = ""
"let g:jedi#show_call_signatures = "1"

" |----------|> colors 
if !has('gui_running')
  set t_Co=256
endif
