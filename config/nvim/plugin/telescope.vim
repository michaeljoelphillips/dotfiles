nnoremap <leader>C <cmd>lua require('telescope.builtin').find_files({search_dirs = {'~/.config/nvim'}, follow = true})<CR>
nnoremap <leader>f <cmd>Telescope git_files use_git_root=false<CR>
nnoremap <leader>F <cmd>Telescope find_files find_command=fd,--no-ignore<CR>
nnoremap <leader>B <cmd>Telescope oldfiles<CR>
nnoremap <leader>m <cmd>Telescope marks<CR>
nnoremap <leader>~ <cmd>Telescope resume<CR>
nnoremap <leader>s <cmd>Telescope live_grep<CR>
nnoremap <leader>S <cmd>Telescope grep_string<CR>
