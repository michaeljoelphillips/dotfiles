local pickers = require('telescope.builtin')

vim.keymap.set('n', 'mm', function()
    vim.opt_local.makeprg = 'make'
end)

vim.keymap.set('i', '<Tab>', function ()
    if vim.fn['vsnip#expandable']() == 1 then
        return '<Plug>(vsnip-expand)'
    end

    return '<Tab>'
end, { expr = true, remap = true })

vim.keymap.set('i', '<C-n>', function ()
    if vim.fn['vsnip#jumpable']() == 1 then
        return '<Plug>(vsnip-jump-next)'
    end

    return '<C-n>'
end, { expr = true, remap = true })


vim.keymap.set('i', '<C-n>', function ()
    return vim.fn['vsnip#jumpable'](1) and '<Plug>(vsnip-jump-next)' or '<C-n>'
end, { expr = true, remap = true })

vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)')
vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)')

vim.keymap.set('n', '<leader>ga', '<cmd>Git add %<cr>')
vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<cr>')
vim.keymap.set('n', '<leader>gd', '<cmd>Gdiff<cr>')
vim.keymap.set('n', '<leader>gp', '<cmd>Gpush<cr>')
vim.keymap.set('n', '<leader>gs', '<cmd>Git<cr>')
vim.keymap.set('n', '<leader>gv', '<cmd>Gvsplit<cr>')

-- vim.keymap.set('i', '<C-y><C-o>', vim.lsp.buf.signature_help, { silent = true })
vim.keymap.set('n', '<leader>u', vim.lsp.buf.code_action, { silent = true })
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { silent = true })
vim.keymap.set('n', 'gH', vim.lsp.buf.signature_help, { silent = true })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { silent = true })
vim.keymap.set('n', 'gh', vim.lsp.buf.hover, { silent = true })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { silent = true })

vim.keymap.set('n', '<leader>;', function()
    vim.lsp.stop_client(vim.lsp.get_active_clients())
end, { silent = true })

vim.keymap.set('n', '<leader>[', '<cmd>SymbolsOutlineClose<cr>')
vim.keymap.set('n', '<leader>]', '<cmd>SymbolsOutlineOpen<cr>')

vim.keymap.set('n', '<leader>T', '<cmd>TestFile<cr>')
vim.keymap.set('n', '<leader>a', '<cmd>TestSuite<cr>')
vim.keymap.set('n', '<leader>g', '<cmd>TestVisit<cr>')
vim.keymap.set('n', '<leader>l', '<cmd>TestLast<cr>')
vim.keymap.set('n', '<leader>t', '<cmd>TestNearest<cr>')

vim.keymap.set('n', '<leader>(', '<Plug>VinegarVerticalSplitUp')
vim.keymap.set('n', '<leader>)', '<Plug>VinegarSplitUp')
vim.keymap.set('n', '<leader>*', '<Plug>VinegarTabUp')
vim.keymap.set('n', '<leader>-', '<Plug>VinegarUp')

vim.keymap.set('n', '<leader>C', function()
    pickers.find_files({ search_dirs = { '~/.config/nvim' }, follow = true })
end)

vim.keymap.set('n', '<leader>F', function()
    pickers.lsp_workspace_symbols()
end)

vim.keymap.set('n', '<leader>S', function()
    pickers.grep_string()
end)

vim.keymap.set('n', '<leader>f', function()
    pickers.git_files({ use_git_root = false })
end)

vim.keymap.set('n', '<leader>s', function()
    pickers.live_grep()
end)

vim.keymap.set('n', '<leader>~', function()
    pickers.resume()
end)
