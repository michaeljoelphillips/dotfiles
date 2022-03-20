source ~/.config/nvim/plugins.vim
source ~/.config/nvim/general.vim

lua require "modules.lsp.config"
lua require "modules.diagnostics.config"
lua require "modules.diagnostics.mappings"
lua require "modules.treesitter.config"
