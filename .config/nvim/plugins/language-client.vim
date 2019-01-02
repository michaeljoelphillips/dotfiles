let g:LanguageClient_serverCommands = {
\   'php': ['php', '~/.config/composer/vendor/bin/php-language-server.php'],
\   'go': ['~/go/bin/go-langserver', '-gocodecompletion'],
\}

nnoremap <silent> <leader>r :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> <leader>h :call LanguageClient_textDocument_hover()<CR>
inoremap <silent> <C-m> <C-o>:call LanguageClient#textDocument_signatureHelp()<CR>
