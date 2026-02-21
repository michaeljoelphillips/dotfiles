local is_cmp_loaded, cmp = pcall(require('cmp_nvim_lsp'))

local M = {
    lsp_client_capabilities = {},
}

if is_cmp_loaded then
    M.lsp_client_capabilities = cmp.update_capabilities(vim.lsp.protocol.make_client_capabilities())
end

M.configureLangServers = function(servers, config)
    if type(servers) == 'string' then
        servers = { servers }
    end

    if config == nil then
        config = {}
    end

    config['capabilities'] = M.lsp_client_capabilities

    for _, server in ipairs(servers) do
        vim.lsp.config(server, config)
        vim.lsp.enable(server)
    end

    return M
end

return M
