call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-lsp'
Plug 'w0rp/ale'
Plug 'joonty/vdebug'
Plug 'SirVer/ultisnips'
Plug 'ludovicchabant/vim-gutentags'
Plug 'janko-m/vim-test'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-dotenv'
Plug 'tpope/vim-dispatch'
Plug 'ruanyl/vim-gh-line'
Plug 'sodapopcan/vim-twiggy'
Plug 'semanser/vim-outdated-plugins'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-journal'
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vader.vim'
Plug 'lumiliet/vim-twig', { 'for': 'html.twig' }
Plug 'noahfrederick/vim-composer', { 'for': 'php' }
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'vim-php/tagbar-phpctags.vim', { 'for': 'php' }
Plug 'jwalton512/vim-blade'
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
Plug 'mikelue/vim-maven-plugin', { 'for': 'java' }
Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }
Plug 'mhartington/oceanic-next'
Plug 'lifepillar/vim-solarized8'
Plug 'christoomey/vim-tmux-navigator'
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'junegunn/vim-easy-align'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'liuchengxu/vista.vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'lervag/vimtex'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'justinmk/vim-dirvish'
Plug 'neovim/nvim-lsp'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'lifepillar/vim-colortemplate'
Plug 'StanAngeloff/php.vim'

call plug#end()
