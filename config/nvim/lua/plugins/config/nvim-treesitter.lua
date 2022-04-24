return {
    'nvim-treesitter/nvim-treesitter',
    config = function()
        local config = require('nvim-treesitter.configs')
        local parsers = require('nvim-treesitter.parsers').get_parser_configs()

        parsers.norg = {
            install_info = {
                url = 'https://github.com/nvim-neorg/tree-sitter-norg',
                files = { 'src/parser.c', 'src/scanner.cc' },
                branch = 'main',
            },
        }

        parsers.vimdoc = {
            install_info = {
                url = 'https://github.com/vigoux/tree-sitter-vimdoc',
                files = { 'src/parser.c', 'src/scanner.c' },
                branch = 'master',
            },
        }

        config.setup({
            ensure_installed = {
                'c',
                'cpp',
                'css',
                'go',
                'graphql',
                'hcl',
                'html',
                'javascript',
                'json',
                'lua',
                'markdown',
                'norg',
                'php',
                'tsx',
            },
            highlight = {
                enable = true,
                custom_captures = {
                    ['type_name'] = 'Type',
                    ['qualified_name'] = 'Type',
                },
            },
            indent = {
                enable = true,
            },
            textobjects = {
                enable = true,
                select = {
                    enable = true,
                    lookahead = true,
                    keymaps = {
                        ['af'] = '@function.outer',
                        ['if'] = '@function.inner',
                        ['ac'] = '@call.outer',
                        ['ic'] = '@call.inner',
                    },
                },
            },
            autotag = {
                enable = true,
            },
        })

        vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
    end,
}
