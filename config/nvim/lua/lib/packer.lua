local packer = require('packer')

local M = {}

M.load = function(plugin)
    local _, name = string.match(plugin, '(.*)%/(.*)')
    local exists, config = pcall(require, 'plugins.config.' .. (name):gsub('%.', '-'))

    if not exists then
        return plugin
    end

    return config
end

M.startup = function(plugins)
    packer.startup(function(use)
        for _, plugin in ipairs(plugins) do
            use(M.load(plugin))
        end
    end)

    require('plugins.maps')
end

return M
