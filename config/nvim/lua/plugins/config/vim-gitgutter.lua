return {
    'airblade/vim-gitgutter',
    config = function()
        vim.g.gitgutter_async = 1
        vim.g.gitgutter_map_keys = 0
    end,
}
