function! ReplaceWordUnderCursor() abort
    let sourceText = expand('<cword>')
    let targetText = input('Replace ' . sourceText . 'with: ')

    execute 'Far ' . sourceText . ' ' . targetText . ' **/* --source=ag'
endfunction
