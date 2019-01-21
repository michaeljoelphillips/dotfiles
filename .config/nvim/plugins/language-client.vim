let g:LanguageClient_serverCommands = {
\   'php': ['php', '~/.config/composer/vendor/bin/php-language-server.php'],
\   'go': ['~/go/bin/go-langserver', '-gocodecompletion'],
\   'kotlin': ['~/Code/KotlinLanguageServer/build/install/kotlin-language-server/bin/kotlin-language-server']
\}

let g:LanguageClient_rootMarkers = {
\   'kotlin': ['.root']
\}

nnoremap <silent> <leader>r :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> <leader>h :call LanguageClient_textDocument_hover()<CR>
inoremap <silent> <C-y> <C-o>:call LanguageClient#textDocument_signatureHelp()<CR>
