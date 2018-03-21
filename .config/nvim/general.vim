" Vim Configuration
set list
set relativenumber
set nowrap
set ignorecase

" Colorscheme
syntax on
syntax enable
set termguicolors
colorscheme OceanicNext

" Enable SpellCheck
autocmd FileType todo setlocal spell
autocmd FileType text setlocal spell
autocmd FileType mail setlocal spell

" Fix Line Joins
set formatoptions+=j

" NetRW Buffer Fix
autocmd FileType netrw setl bufhidden=delete
