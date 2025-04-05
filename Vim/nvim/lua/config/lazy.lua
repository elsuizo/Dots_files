-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- plugins without comfig
		"ziglang/zig.vim", -- zig language support
		"rust-lang/rust.vim", -- Rust language support
		"yorickpeterse/vim-paper", -- nice clear colorscheme
		-- plugins with config in the `plugins/` folder
		{ import = "plugins" },
	},
	install = { colorscheme = { "low_entropy" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})
