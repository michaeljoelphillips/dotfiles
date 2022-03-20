local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
  install_info = {
    url = "https://github.com/nvim-neorg/tree-sitter-norg",
    files = { "src/parser.c", "src/scanner.cc" },
    branch = "main"
  },
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"php", "html", "css", "javascript", "c", "go", "json", "lua", "graphql", "tsx", "c", "cpp", "markdown", "norg", "hcl"},
  highlight = {
    enable = true,
    custom_captures = {
      ["type_name"] = "Type",
      ["qualified_name"] = "Type",
    },
  },
  indent = {
    enable = true
  },
  textobjects = {
    enable = true,
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@call.outer",
        ["ic"] = "@call.inner",
      },
    },
  },
}
