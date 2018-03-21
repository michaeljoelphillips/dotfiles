" Movement
let mapleader = ','
inoremap jj <ESC>
inoremap JJ <ESC>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Reload Vim Configuration
noremap <silent> <leader>V :source ~/.config/nvim/init.vim<CR>:filetype detect<CR>:exe ":echo 'Config Reloaded!'"<CR>

" Git Aliases
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gv :Gvsplit<CR>

" Test Aliases
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" FZF Aliases
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>w :Windows<CR>

" Format JSON
nnoremap <leader>jf :%!python -m json.tool<CR>

" Map VDebug Paths
nnoremap <leader>vS :call SetupVdebugPaths()<CR>

" Clear Search Highlighting
nmap <leader>hl :let @/ = ""<CR>

" Insert Use Statements
" autocmd User Composer nmap <buffer> <leader>u <Plug>(composer-use)
autocmd FileType php noremap <Leader>U :call PhpExpandClass()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

" Dash Docs
nmap <leader>K <Plug>DashSearch<CR>

" TagBar Toggle
nnoremap <leader>] :TagbarOpen j<CR>
nnoremap <leader>[ :TagbarClose<CR>

" Deoplete Tab Completion
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
