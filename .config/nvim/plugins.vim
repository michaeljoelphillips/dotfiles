call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'joonty/vdebug'
Plug 'SirVer/ultisnips'
Plug 'vim-scripts/dbext.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'janko-m/vim-test'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'ruanyl/vim-gh-line'
Plug 'AGhost-7/critiq.vim'
Plug 'sodapopcan/vim-twiggy'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-jdaddy'
Plug 'semanser/vim-outdated-plugins'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/vim-peekaboo'
Plug 'nelsyeung/twig.vim', { 'for': 'php' }
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'noahfrederick/vim-composer', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'vim-php/tagbar-phpctags.vim', { 'for': 'php' }
Plug 'jwalton512/vim-blade'
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
Plug 'mikelue/vim-maven-plugin', { 'for': 'java' }
Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }
Plug 'mhartington/oceanic-next'

call plug#end()
