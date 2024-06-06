return {
    'hrsh7th/nvim-cmp',
    config = function()
        local cmp = require('cmp')

        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn['vsnip#anonymous'](args.body)
                end,
            },
            mapping = {
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-n>'] = cmp.mapping.select_next_item(),
                ['<C-p>'] = cmp.mapping.select_prev_item(),
                ['<C-y>'] = cmp.mapping.confirm(),
                ['<C-e>'] = cmp.mapping.close(),
            },
            sources = {
                { name = 'nvim_lsp' },
                { name = 'path' },
            },
        })
    end,
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-path',
	},
}
