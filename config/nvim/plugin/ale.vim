let g:ale_disable_lsp = 1
let g:ale_enabled = 1

let g:ale_fixers = {
\   'c': ['clang-format'],
\   'php': ['phpcbf'],
\   'go': ['gofmt'],
\   'kotlin': ['ktlint'],
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'vue': ['prettier'],
\   'html': ['prettier'],
\   'java': ['google_java_format'],
\   'rust': ['rustfmt'],
\}

let g:ale_c_clangformat_style_option = 'Google'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_echo_msg_format = '[%linter%] %s'

nmap <leader>z <Plug>(ale_fix)
