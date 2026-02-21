return {
    'neovim/nvim-lspconfig',
    config = function()
        local lsp = require('lib/lsp')

        lsp.configureLangServers({
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
            'phpactor',
            'volar',
        })

        lsp.configureLangServers('ts_ls', {
            init_options = {
                plugins = {
                    {
                        name = "@vue/typescript-plugin",
                        location = "/Users/michaelphillips/.nvm/versions/node/v20.16.0/lib/node_modules/@vue/typescript-plugin",
                        languages = {"javascript", "typescript", "vue"},
                    },
                },
            },
            filetypes = {
                "javascript",
                "typescript",
                "vue",
            },
        })

        lsp.configureLangServers('lua_ls', {
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

        lsp.configureLangServers('texlab', {
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
}
