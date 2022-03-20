vim.api.nvim_command('autocmd DiagnosticChanged * lua vim.diagnostic.setloclist({open = false})')
vim.diagnostic.config({virtual_text = false})
