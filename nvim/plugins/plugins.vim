call plug#begin('~/.vim/plugged')

" IDE-Like Plugins
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'joonty/vdebug', { 'for': 'php' }
Plug 'SirVer/ultisnips'
Plug 'vim-scripts/dbext.vim'
Plug 'ludovicchabant/vim-gutentags'

" PHP Plugins
Plug 'nelsyeung/twig.vim', { 'for': 'php' }
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'noahfrederick/vim-composer', { 'for': 'php' }
" Plug 'swekaj/php-foldexpr.vim', { 'for': 'php' }
Plug 'vim-php/tagbar-phpctags.vim', { 'for': 'php' }

" Movement/Misc Plugins
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-vinegar'

" Color Schemes
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'flazz/vim-colorschemes'
Plug 'jacoborus/tender'

call plug#end()
