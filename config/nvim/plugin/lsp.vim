set shortmess+=c
set omnifunc=v:lua.vim.lsp.omnifunc
set completeopt=menu,menuone,noselect

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gh <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gH <cmd>lua vim.lsp.buf.signature_help()<CR>
inoremap <silent> <C-y><C-o> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <leader>; <cmd>lua vim.lsp.stop_client(vim.lsp.get_active_clients())<CR>
nnoremap <silent> <leader>u <cmd>lua vim.lsp.buf.code_action()<CR>

set tagfunc=v:lua.vim.lsp.tagfunc
