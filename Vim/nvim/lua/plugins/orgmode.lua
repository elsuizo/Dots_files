return {
	"nvim-orgmode/orgmode",
	event = "VeryLazy",
	ft = { "org" },
	config = function()
		-- Setup orgmode
		require("orgmode").setup({
			org_agenda_files = "~/orgfiles/**/*",
			org_default_notes_file = "~/orgfiles/refile.org",
		})
		--TODO(elsuizo: 2026-05-02): no se si quiero esto todavia...
		-- Experimental LSP support
		-- vim.lsp.enable('org')
	end,
}
