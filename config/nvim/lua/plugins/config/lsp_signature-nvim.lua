return {
    'ray-x/lsp_signature.nvim',
    config = function()
        require('lsp_signature').setup({
            hint_enable = false,
            floating_window_above_cur_line = true,
            padding = ' ',
            handler_opts = {
                border = 'single',
            },
        })
    end,
}
