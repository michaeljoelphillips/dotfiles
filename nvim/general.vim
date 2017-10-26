" Vim Configuration
set list
set relativenumber
set nowrap

" Colorscheme
syntax on
syntax enable
set termguicolors
colorscheme OceanicNext

" Enable SpellCheck
autocmd FileType todo setlocal spell
autocmd FileType text setlocal spell
autocmd FileType mail setlocal spell
