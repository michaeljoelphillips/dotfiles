function! SetupVdebugPaths()
    let g:vdebug_options["path_maps"] = {'/var/www/html': '/Users/mphillips2/Code/omnichannel'}
    let g:vdebug_options["watch_window_style"] = 'compact'
endfunction

" Map VDebug Paths
nnoremap <leader>vS :call SetupVdebugPaths()<CR>
