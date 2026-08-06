return {
	cmd = {
		"clangd",
		"--background-index",
		"--clang-tidy",
		"--completion-style=detailed",
		"--header-insertion=never",
	},
	filetypes = { "c", "cpp" },
	root_markers = { "Makefile" },
}
