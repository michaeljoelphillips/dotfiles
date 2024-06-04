return {
	'mfussenegger/nvim-dap',
	config = function()
		local dap = require('dap')

		dap.adapters.delve = {
			type = 'server',
			port = '${port}',
			executable = {
				command = 'dlv',
				args = {'-l', '127.0.0.1:${port}', 'dap'}
			},
		}

		dap.configurations.go = {
			{
				type = "delve",
				name = "debug",
				request = "launch",
				program = "${file}",
			},
		}
	end,
}
