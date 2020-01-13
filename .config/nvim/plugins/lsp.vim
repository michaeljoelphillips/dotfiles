set omnifunc=lsp#omnifunc

nnoremap <silent> <leader>h :call lsp#text_document_hover()<CR>
inoremap <silent> <C-y> <C-o> <cmd>lua vim.lsp.buf.signature_help()<CR>
