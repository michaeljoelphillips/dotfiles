local cmp_lsp = require 'cmp_nvim_lsp'
local configs = require 'lspconfig/configs'
local lspconfig = require 'lspconfig'

-- configs.phpls = {
--   default_config = {
--     cmd = {"php7", "-d", "memory_limit=512M", "/usr/local/bin/phpls"};
--     filetypes = {"php"};
--     log_level = vim.lsp.protocol.MessageType.Warning;
--     root_dir = nvim_lsp.util.root_pattern("composer.lock", ".git");
--     settings = {};
--   };
-- }

local servers = {
  'clangd',
  'gopls',
  'graphql',
  -- 'phpls',
  -- 'sumneko_lua',
  'eslint',
  'phpactor',
  'pylsp',
  'pyright',
  'bashls',
  'terraformls',
}

for _, server in ipairs(servers) do
  lspconfig[server].setup {
    capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
  }
end

lspconfig.tsserver.setup {
  cmd = {
    'typescript-language-server',
    '--stdio',
    '--log-level=4',
    '--tsserver-log-file=/tmp/tsserver.log',
  }
}

lspconfig.texlab.setup {
  settings = {
    texlab = {
      build = {
        executable = 'tectonic',
        args = { '%f', '--keep-logs' },
        onSave = true,
        forwardSearchAfter = true,
      },
    },
    forwardSearch = {
      executable = 'zathura',
      args = {'--synctex-forward', '%l:1:%f', '%p'},
    },
    chktex = {
      onOpenAndSave = true,
    },
  },
  capabilities = cmp_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
};

lspconfig.arduino_language_server.setup({
  cmd = {
    'arduino-language-server',
    '-log',
    '-logpath=/tmp',
    '-fqbn=Seeeduino:Seeed_STM32F4:wioGpsM4',
  }
})
