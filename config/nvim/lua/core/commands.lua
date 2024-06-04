vim.api.nvim_create_user_command('InsertUuid', function()
  local uuid = require('uuid')

  vim.api.nvim_put({ uuid() }, 'c', false, true)
end, {})

vim.api.nvim_create_user_command('Review', ':Git difftool -y origin/HEAD', {})
