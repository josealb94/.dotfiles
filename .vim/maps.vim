let mapleader=" "

" |----------|> easymotion 
nmap <Leader>s <Plug>(easymotion-s2)

" |----------|> nerdtree 
nmap <Leader>nt :NERDTreeFind<CR>
map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>

" |----------|> coc.nvim 
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" use <s-tab> for trigger completion and navigate to the previous complete item
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" |----------|> fzf 
map <Leader>oo :Files<CR>
map <Leader>op :ProjectsFiles<CR>
map <Leader>ag :Ag<CR>

" |----------|> others 
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>e :wq<CR>

" Turn off search highlight
nnoremap <Leader>ns :nohlsearch<CR>

" Remap escape
imap jk <Esc>
imap <C-j> <Esc>

" Scroll
"nnoremap <up> <c-y>
"nnoremap <down> <c-e>
"nnoremap <right> zl
"nnoremap <left> zh

map <F2> :echo 'Current time is ' . strftime('%c')<CR>


" |----------|> reference: mode-specific maps 
" https://vim.fandom.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)
"Commands                        Mode
"--------                        ----
"nmap, nnoremap, nunmap          Normal mode
"imap, inoremap, iunmap          Insert and Replace mode
"vmap, vnoremap, vunmap          Visual and Select mode
"xmap, xnoremap, xunmap          Visual mode
"smap, snoremap, sunmap          Select mode
"cmap, cnoremap, cunmap          Command-line mode
"omap, onoremap, ounmap          Operator pending mode
