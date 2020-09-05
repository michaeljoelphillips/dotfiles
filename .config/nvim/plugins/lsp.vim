set omnifunc=lsp#omnifunc

nnoremap <silent> <leader>d <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>h <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>sh <cmd>lua vim.lsp.buf.signature_help()<CR>
inoremap <silent> <C-y><C-o> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>df <cmd>lua vim.lsp.buf.definition()<CR>

lua << EOF
local nvim_lsp = require 'nvim_lsp'
local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'
local lsp = vim.lsp

configs.phpls = {
  default_config = {
    cmd = {"php", "-d", "memory_limit=512M", "/usr/local/bin/phpls"};
    filetypes = {"php"};
    root_dir = util.root_pattern("composer.lock", ".git");
    log_level = lsp.protocol.MessageType.Warning;
    settings = {};
  };
}

nvim_lsp.rls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.gopls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.phpls.setup{on_attach=require'completion'.on_attach}
vim.lsp.set_log_level("debug")
EOF

" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c

" let g:completion_enable_auto_paren = 1
" let g:completion_enable_auto_signature = 1
" let g:completion_enable_auto_hover = 0
