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

M.startup = function(config)
    packer.startup(function(use, use_rocks)
        for _, plugin in ipairs(config.plugins) do
            use(M.load(plugin))
        end

        use_rocks(config.rocks)
    end)
end

return M
