call plug#begin('~/.vim/plugged')

" IDE-Like Plugins
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'joonty/vdebug' ", { 'for': 'php' }
Plug 'SirVer/ultisnips'
Plug 'vim-scripts/dbext.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'janko-m/vim-test'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'tpope/vim-fugitive'
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

" PHP Plugins
Plug 'nelsyeung/twig.vim', { 'for': 'php' }
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug 'noahfrederick/vim-composer', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
" Plug 'swekaj/php-foldexpr.vim', { 'for': 'php' }
Plug 'vim-php/tagbar-phpctags.vim', { 'for': 'php' }
Plug 'jwalton512/vim-blade'

" Java Plugins
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
Plug 'mikelue/vim-maven-plugin', { 'for': 'java' }

" Movement/Misc Plugins
Plug 'tpope/vim-commentary'
Plug 'sodapopcan/vim-twiggy'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-jdaddy'
Plug 'airblade/vim-rooter'
Plug 'junegunn/vim-github-dashboard'
Plug 'rizzatti/dash.vim'
Plug 'semanser/vim-outdated-plugins'

" Color Schemes
Plug 'mhartington/oceanic-next'

" Writing Plugins
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/vim-peekaboo'

call plug#end()
