local function load_project_excludes()
	local patterns = { ".DS_Store" }
	local path = vim.fn.findfile(".fdignore", ".;")

	if path ~= "" then
		for line in io.lines(path) do
			if line ~= "" and not line:match("^#") then
				table.insert(patterns, line)
			end
		end
	end

	return patterns
end

return {
	filters = {
		git_ignored = false,
		custom = load_project_excludes(),
	},
}
