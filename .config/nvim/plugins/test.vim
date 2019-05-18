let test#strategy = {
        \ 'nearest': 'basic',
        \ 'file': 'basic',
\ }

function! DockerTransform(cmd) abort
    return 'docker-compose exec fpm php ' . a:cmd
endfunction

function! PHP73Transform(cmd) abort
    return 'docker run --rm -it -v `pwd`:/app -w /app php:7.3 ' . a:cmd
endfunction

function! PHP72Transform(cmd) abort
    return 'docker run --rm -it -v `pwd`:/app -w /app nomad145/php:7.2-debug ' . a:cmd
endfunction

function! PHP71Transform(cmd) abort
    return 'docker run --rm -it -v `pwd`:/app -w /app php:7.1 ' . a:cmd
endfunction

let g:test#custom_transformations = {
	\ 'docker': function('DockerTransform'),
	\ 'php73': function('PHP73Transform'),
	\ 'php72': function('PHP72Transform'),
	\ 'php71': function('PHP71Transform'),
\ }

let g:test#transformation = 'docker'

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
