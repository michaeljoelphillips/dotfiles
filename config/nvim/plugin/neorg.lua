require('neorg').setup {
  -- Tell Neorg what modules to load
  load = {
    ["core.defaults"] = {},
    ["core.norg.concealer"] = {},
    ["core.norg.completion"] = {
      config = {
        engine = 'nvim-cmp'
      }
    },
    ["core.norg.dirman"] = {
      config = {
        workspaces = {
          circulo = "~/Documents/Notes/Circulo",
        },
        autochdir = true,
        index = "index.norg",
        last_workspace = vim.fn.stdpath("cache") .. "/neorg.last-workspace"
      }
    },
    ["core.norg.qol.toc"] = {},
  },
}
