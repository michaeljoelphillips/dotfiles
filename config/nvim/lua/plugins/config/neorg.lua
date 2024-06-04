return {
    'nvim-neorg/neorg',
    config = function()
        require('neorg').setup({
            load = {
                ['core.export'] = {},
                ['core.defaults'] = {},
                ['core.concealer'] = {},
                ['core.completion'] = {
                    config = {
                        engine = 'nvim-cmp',
                    },
                },
                ['core.dirman'] = {
                    config = {
                        workspaces = {
                            circulo = '~/Documents/Notes/Circulo',
                        },
                        autochdir = true,
                        index = 'index.norg',
                        last_workspace = vim.fn.stdpath('cache') .. '/neorg.last-workspace',
                    },
                },
                ['core.qol.toc'] = {},
            },
        })
    end,
    requires = "nvim-lua/plenary.nvim",
}
