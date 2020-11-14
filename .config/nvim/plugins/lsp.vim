set omnifunc=lsp#omnifunc

imap <silent> <c-p> <Plug>(completion_trigger)
nnoremap <silent> <leader>d <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>h <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>sh <cmd>lua vim.lsp.buf.signature_help()<CR>
inoremap <silent> <C-y><C-o> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>df <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> <leader>; <cmd>lua vim.lsp.stop_client(vim.lsp.get_active_clients())<CR>
" nnoremap <silent> <leader>u <cmd>lua vim.lsp.buf.code_action()<CR>

lua << EOF
local nvim_lsp = require 'nvim_lsp'
local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'
local lsp = vim.lsp

configs.phpactor = {
  default_config = {
    cmd = {"php", "-d", "memory_limit=512M", "~/Code/phpactor/bin/phpactor", "language-server"};
    filetypes = {"php"};
    root_dir = util.root_pattern("composer.lock", ".git");
    log_level = lsp.protocol.MessageType.Warning;
    settings = {};
  };
}

configs.phpls = {
  default_config = {
    cmd = {"php", "-d", "memory_limit=512M", "/usr/local/bin/phpls"};
    filetypes = {"php"};
    root_dir = util.root_pattern("composer.lock", ".git");
    log_level = lsp.protocol.MessageType.Warning;
    settings = {};
  };
}

configs.phplsdebug = {
  default_config = {
    cmd = {"/home/nomad/Code/phpls/bin/wrapper.sh"};
    filetypes = {"php"};
    root_dir = util.root_pattern("composer.lock", ".git");
    log_level = lsp.protocol.MessageType.Warning;
    settings = {};
  };
}

nvim_lsp.jsonls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.rls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.gopls.setup{on_attach=require'completion'.on_attach}
nvim_lsp.phpls.setup{on_attach=require'completion'.on_attach}
vim.lsp.set_log_level("debug")
EOF

set completeopt=menuone,noselect
set shortmess+=c

let g:completion_timer_cycle = 100
let g:completion_trigger_on_delete = 1
let g:completion_trigger_keyword_length = 3
let g:completion_matching_strategy_list = ['substring']
