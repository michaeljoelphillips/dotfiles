let test#strategy = {
        \ 'file': 'neovim',
        \ 'nearest': 'neovim',
        \ 'suite': 'neovim',
\ }

" let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
" let g:test#strategy = 'dispatch'

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
