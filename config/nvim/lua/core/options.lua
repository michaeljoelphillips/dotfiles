vim.g.mapleader = ','

vim.opt.background = 'dark'
vim.opt.completeopt = 'menu,menuone,noselect'
vim.opt.exrc = true
vim.opt.foldenable = false
vim.opt.foldmethod = 'expr'
vim.opt.formatoptions:append('j')
vim.opt.ignorecase = true
vim.opt.inccommand = 'nosplit'
vim.opt.list = true
vim.opt.maxmempattern = 3000
vim.opt.number = true
vim.opt.omnifunc = 'v:lua.vim.lsp.omnifunc'
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.shortmess:append('c')
vim.opt.showmode = false
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.tabstop = 4
vim.opt.tagfunc = 'v:lua.vim.lsp.tagfunc'
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.diagnostic.config({ virtual_text = false })
vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, { border = 'single' })
