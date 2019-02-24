let g:ale_fixers = {
\   'php': ['php_cs_fixer'],
\   'go': ['gofmt'],
\   'kotlin': ['ktlint']
\}

let g:ale_php_phpcs_standard = 'PSR2'
let g:ale_php_cs_fixer_options = "--rules='{\"declare_strict_types\": true, \"@PSR2\": true, \"@Symfony\": true, \"ordered_imports\": {\"sortAlgorithm\": \"alpha\"}}' --allow-risky=yes"
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_echo_msg_format = '[%linter%] %s'

nmap <leader>z <Plug>(ale_fix)
