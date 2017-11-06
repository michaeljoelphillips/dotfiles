" VDebug Configuration
function! SetupVdebugPaths()
    let g:vdebug_options["path_maps"] = g:host_app_path
    " let g:vdebug_options["path_maps"] = {'/app/': '/Users/nomad/Code/linode-alpha-api/'}
    let g:vdebug_options["watch_window_style"] = 'compact'
endfunction

" Ale Configuration
let g:ale_php_langserver_use_global = 1
let g:ale_php_langserver_executable = expand("~/.composer/vendor/felixfbecker/language-server/bin/php-language-server.php")
let g:ale_php_phpcs_standard = "PSR2"

" Deoplete Configuration
let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
" Close the preview window after completion.
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" Netrw Configuration
let g:netrw_liststyle = 3

" UltiSnips
let g:snips_author = 'Michael Phillips <michael.phillips@realpage.com>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsEditSplit = "vertical"

" DBExt
let g:dbext_default_profile_docker = 'type=MYSQL:user=root:passwd=root:dbname=dbname:host=127.0.0.1'

" GutenTags
let g:gutentags_ctags_exclude = ['*.phar', 'cache', 'legacy', '__CG__*', 'node_modules', 'web', '*.js', '*.sql']

" Test.vim
let test#strategy = "basic"

" Github Dashboard
let g:github_dashboard = { 'username': 'nomad145', 'password': $GITHUB_TOKEN }

" Vim PHP Namespaces
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction

function! IPhpInsertUse()
    call PhpInsertUse()
    " call feedkeys('a', 'n')
endfunction
