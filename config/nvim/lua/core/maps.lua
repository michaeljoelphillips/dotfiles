vim.keymap.set('i', '<C-i>', '<C-o>O')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<leader>/', function()
    vim.cmd('noh')
end)

vim.keymap.set('n', '<leader>q', function()
    vim.cmd('copen')
end)

vim.keymap.set('n', '<leader>`', function()
    vim.cmd('lopen')
end)

vim.keymap.set('n', '[t', function ()
    vim.cmd('tabprevious')
end)

vim.keymap.set('n', ']t', function ()
    vim.cmd('tabnext')
end)

vim.keymap.set('n', '<leader>z', function ()
    require('lib/scratch').new()
end)
