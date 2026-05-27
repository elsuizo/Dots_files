return {
	-- Optional: add build-on-save diagnostics or specify the path to your zig executable
	cmd = { "zls" },
	root_markers = {
		"zls.json",
		"build.zig",
		".git",
	},
	filetypes = { "zig" },
	settings = {
		zls = {
			enable_build_on_save = true,
			enable_snippets = true,
		},
	},
}
