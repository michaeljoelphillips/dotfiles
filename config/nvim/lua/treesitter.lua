local ts = vim.treesitter

local M = {}

function M.dump_tree()
	local parser = ts.get_parser()
	local root = parser:parse()[1]:root()

	M.recurse(root)
end

function M.recurse(parent)
	local raw_iterator = parent:iter_children()

	while (true) do
		local node = raw_iterator()
		if not node then break end

		print(node)

		if node:child_count() > 0 then
			M.recurse(node)
		end
	end
end

return M
