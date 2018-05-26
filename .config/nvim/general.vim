" Vim Configuration
set list
set relativenumber
set number
set nowrap
set ignorecase
set noea
set icm=nosplit

" Colorscheme
syntax on
syntax enable
set background=dark
" set termguicolors

" if (has("termguicolors"))
"   colorscheme OceanicNext
" endif
set t_Co=256

" Enable SpellCheck
autocmd FileType todo setlocal spell
autocmd FileType text setlocal spell
autocmd FileType mail setlocal spell

" Fix Line Joins
set formatoptions+=j

" Java Ale Configuration
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

" NetRW Buffer Fix
autocmd FileType netrw setl bufhidden=delete
