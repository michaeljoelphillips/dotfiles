local telescope = require "telescope"

telescope.setup {
    defaults = {
        mappings = {
          n = {
            ["<C-q>"] = "send_selected_to_qflist"
          },
          i = {
            ["<C-q>"] = "send_selected_to_qflist"
          },
        },
    },
}
