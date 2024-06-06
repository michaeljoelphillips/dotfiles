vim.api.nvim_create_autocmd({ 'FileType' }, {
    pattern = { 'todo', 'text', 'mail' },
    command = 'setlocal spell',
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
    pattern = { 'netrw' },
    command = 'setlocal bufhidden=delete',
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
    pattern = { 'tex' },
    command = '!zathura "%:r.pdf" &',
})

vim.api.nvim_create_autocmd({ 'DiagnosticChanged' }, {
    pattern = { '*' },
    callback = function()
        vim.diagnostic.setloclist({ open = false })
    end,
})
