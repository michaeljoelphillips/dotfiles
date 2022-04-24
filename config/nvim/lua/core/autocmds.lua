vim.api.nvim_create_autocmd({ 'FileType' }, {
    pattern = { 'todo', 'text', 'mail' },
    command = 'setlocal spell',
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
    pattern = { 'netrw' },
    command = 'setlocal bufhidden=delete',
})

vim.api.nvim_create_autocmd({ 'DiagnosticChanged' }, {
    pattern = { '*' },
    callback = function()
        vim.diagnostic.setloclist({ open = false })
    end,
})

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
    pattern = { 'init.lua' },
    command = 'source <afile> | PackerCompile',
})
