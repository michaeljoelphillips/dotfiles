call plug#begin('~/.local/share/nvim/plugged')

" Syntax Plugins
Plug 'baskerville/vim-sxhkdrc'
Plug 'jparise/vim-graphql'
Plug 'sodapopcan/vim-twiggy'
Plug 'udalov/kotlin-vim', { 'for': 'kotlin' }

" Color Schemes
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'

" Vim Plugins
" Plug 'AndrewRadev/splitjoin.vim' # ToDo: replace this with Treesitter
Plug 'airblade/vim-gitgutter'
Plug 'arnaud-lb/vim-php-namespace', { 'for': 'php' }
Plug 'brooth/far.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-peekaboo'
Plug 'justinmk/vim-dirvish'
Plug 'justinmk/vim-sneak'
Plug 'lifepillar/vim-colortemplate'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'ruanyl/vim-gh-line'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-dotenv'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-jdaddy'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vimwiki/vimwiki'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/goyo.vim'

" Neovim Plugins
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'neovim/nvim-lspconfig'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-neorg/neorg'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'ray-x/cmp-treesitter'
Plug 'ray-x/lsp_signature.nvim'
Plug 'nacro90/numb.nvim'
Plug 'windwp/nvim-ts-autotag'
Plug 'simrat39/symbols-outline.nvim'
Plug 'chentau/marks.nvim'

" Causes nvim to crash I think?
" Plug 'sindrets/diffview.nvim'
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'rcarriga/vim-ultest', { 'do': ':UpdateRemotePlugins' }

call plug#end()
