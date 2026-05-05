---@type vim.lsp.Config
return {
	cmd = {
		"jetls",
		"serve",
	},
	filetypes = { "julia" },
	root_markers = { "Project.toml" },
}
