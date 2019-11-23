set omnifunc=lsp#omnifunc

nnoremap <silent> <leader>h :call lsp#text_document_hover()<CR>
inoremap <silent> <C-y> <C-o>:call lsp#text_document_signature_help()<CR>
