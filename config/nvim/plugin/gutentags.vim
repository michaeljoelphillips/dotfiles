let g:gutentags_ctags_exclude = [
\    '*.phar',
\    'cache',
\    'legacy',
\    '__CG__*',
\    'vendor/bin',
\    'node_modules',
\    'web',
\    '*.js',
\    '*.html',
\    '*.css',
\    '*.sql',
\    '*.json',
\    '*.xml',
\    '*.md',
\    '*.properties',
\]

let g:gutentags_ctags_extra_args = ['--kinds-php=+f-alnvd']
