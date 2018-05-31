" VDebug Configuration
function! SetupVdebugPaths()
    let g:vdebug_options["path_maps"] = {'/var/www/html': '/Users/mphillips2/Code/omnichannel'}
    " let g:vdebug_options["path_maps"] = {'/app/': '/Users/nomad/Code/linode-alpha-api/'}
    let g:vdebug_options["watch_window_style"] = 'compact'
endfunction

" Ale Configuration
let g:ale_fixers = {
\   'php': ['php_cs_fixer']
\}

let g:ale_linters = {
\   'php': ['phpcs']
\}

let g:ale_php_langserver_use_global = 1
let g:ale_php_langserver_executable = "/home/nomad/.config/composer/vendor/bin/php-language-server.php"
let g:ale_php_phpcs_standard = "PSR2"
let g:ale_php_cs_fixer_options = "--rules='{\"@PSR2\": true, \"@Symfony\": true, \"ordered_imports\": {\"sortAlgorithm\": \"alpha\"}}'"

" Deoplete Configuration
let g:deoplete#enable_at_startup = 1
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']

" Close the preview window after completion.
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" LanguageServer Configuration
let g:LanguageClient_serverCommands = {
\   'php': ['php', '/home/nomad/.config/composer/vendor/bin/php-language-server.php'],
\}

" Netrw Configuration
let g:netrw_liststyle = 3

" UltiSnips
let g:snips_author = 'Michael Phillips <michael.phillips@realpage.com>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-k>"
let g:UltiSnipsEditSplit = "vertical"

" DBExt
let g:dbext_default_profile_docker = 'type=PGSQL:user=service_user:dbname=service_db:host=127.0.0.1'

" GutenTags
let g:gutentags_ctags_exclude = ['*.phar', 'cache', 'legacy', '__CG__*', 'node_modules', 'web', '*.js', '*.sql']

" Test.vim
let test#strategy = "basic"

function! DockerTransform(cmd) abort
    return 'docker-compose exec fpm php ' . a:cmd
endfunction

function! PHP72Transform(cmd) abort
    return 'docker run --rm -it -v `pwd`:/app -w /app nomad145/php:7.2-debug ' . a:cmd
endfunction

let g:test#custom_transformations = {
	\ 'docker': function('DockerTransform'),
	\ 'php72': function('PHP72Transform'),
\ }

let g:test#transformation = 'docker'

" Github Dashboard
let g:github_dashboard = { 'username': 'nomad145', 'password': $GITHUB_TOKEN }

" GitGutter
" Fixes https://github.com/airblade/vim-gitgutter/issues/509
let g:gitgutter_async = 0
