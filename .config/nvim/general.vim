set list
set relativenumber
set number
set nowrap
set ignorecase
set smartcase
set noea
set icm=nosplit
set background=dark
set termguicolors
set tabstop=4
set shiftwidth=4
set formatoptions+=j
set t_Co=256
set scl=yes
set noshowmode
set exrc
let mapleader = ','
syntax on
colorscheme OceanicNext
inoremap jj <ESC>
inoremap JJ <ESC>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <silent> <leader>V :source ~/.config/nvim/init.vim<CR>:filetype detect<CR>
noremap <leader>C :vsplit $MYVIMRC<CR>
nmap <leader>/ :noh<CR>
nmap <leader>s :%s/\s\+$//e<CR>
autocmd FileType todo setlocal spell
autocmd FileType text setlocal spell
autocmd FileType mail setlocal spell
