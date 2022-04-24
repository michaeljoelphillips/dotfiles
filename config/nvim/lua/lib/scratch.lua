local M = {}

M.new = function()
    vim.cmd('15new')
    vim.bo.buftype = 'nofile'
    vim.bo.bufhidden = 'hide'
    vim.bo.swapfile = false
end

return M
