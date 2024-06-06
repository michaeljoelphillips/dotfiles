return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup({
            defaults = {
                mappings = {
                    n = {
                        ['<C-q>'] = 'send_selected_to_qflist',
                    },
                    i = {
                        ['<C-q>'] = 'send_selected_to_qflist',
                    },
                },
            },
        })
    end,
}
