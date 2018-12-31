let g:ale_fixers = {
\   'php': ['php_cs_fixer']
\}

let g:ale_php_langserver_use_global = 1
let g:ale_php_langserver_executable = "/home/nomad/.config/composer/vendor/bin/php-language-server.php"
let g:ale_php_phpcs_standard = "PSR2"
let g:ale_php_cs_fixer_options = "--rules='{\"@PSR2\": true, \"@Symfony\": true, \"ordered_imports\": {\"sortAlgorithm\": \"alpha\"}}'"
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1

nmap <leader>z <Plug>(ale_fix)
