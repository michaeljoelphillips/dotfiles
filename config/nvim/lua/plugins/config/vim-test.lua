return {
    'janko-m/vim-test',
    config = function()
        vim.g['test#strategy'] = {
            file = 'neovim',
            nearest = 'neovim',
            suite = 'neovim',
        }
    end,
}
