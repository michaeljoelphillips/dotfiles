return {
    'neovim/nvim-lspconfig',
    config = function()
        local utils = require('lib/lsp')

        utils.configureLangServers({
            'bashls',
            'clangd',
            'gopls',
            'graphql',
            'html',
            'jsonls',
            'pylsp',
            'pyright',
            'rust_analyzer',
            'terraformls',
            'tsserver',
        })

        utils.configureLangServers('lua_ls', {
            settings = {
                Lua = {
                    runtime = {
                        version = 'LuaJIT',
                        path = runtime_path,
                    },
                    diagnostics = {
                        globals = { 'vim' },
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file('', true),
                    },
                    telemetry = {
                        enable = false,
                    },
                },
            },
        })

        utils.configureLangServers('texlab', {
            settings = {
                texlab = {
                    build = {
                        executable = 'tectonic',
                        args = { '%f', '--keep-logs' },
                        onSave = true,
                        forwardSearchAfter = true,
                    },
                },
                forwardSearch = {
                    executable = 'zathura',
                    args = { '--synctex-forward', '%l:1:%f', '%p' },
                },
                chktex = {
                    onOpenAndSave = true,
                },
            },
        })
    end,
    requires = { { 'hrsh7th/nvim-cmp' } },
}
