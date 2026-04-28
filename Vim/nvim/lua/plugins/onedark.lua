return {
	"navarasu/onedark.nvim",
	priority = 1000, -- make sure to load this before all the other start plugins
	config = function()
		require("onedark").setup({
			style = "darker",
			colors = {
				yellow = "#ff8800",
			},
		})
		require("onedark").load()
	end,
}
