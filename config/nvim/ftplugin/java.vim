set softtabstop=2
set tabstop=8
set shiftwidth=2
set expandtab

autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:deoplete#omni_patterns = {}
let g:deoplete#enable_at_startup = 1
let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
let g:JavaComplete_JavaviDebug = 1
let g:JavaComplete_JavaviLogfileDirectory = '/tmp/javavi'
