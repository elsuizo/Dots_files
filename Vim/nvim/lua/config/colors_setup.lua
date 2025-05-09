-- el mejor colorscheme
vim.cmd("colorscheme low_entropy")
--vim.cmd("colorscheme paper")

-- custom colorscheme for lualine
local LowEntropy = {}

local colors = {
	black = "#121212",
	white = "#d7d7d7",
	red = "#fb4934",
	green = "#b8bb26",
	blue = "#0056b7",
	gray = "#a89984",
	darkgray = "#3c3836",
	lightgray = "#504945",
	inactivegray = "#7c6f64",
}

LowEntropy.normal = {
	a = { bg = colors.white, fg = colors.black, gui = "bold" },
	b = { bg = colors.blue, fg = colors.white },
	c = { bg = colors.black, fg = colors.white },
}

LowEntropy.insert = {
	a = { bg = colors.black, fg = colors.white, gui = "bold" },
	b = { bg = colors.black, fg = colors.white },
	c = { bg = colors.white, fg = colors.black },
}

LowEntropy.visual = {
	a = { bg = colors.white, fg = colors.black, gui = "bold" },
	b = { bg = colors.blue, fg = colors.white },
	c = { bg = colors.lightgray, fg = colors.black },
}

LowEntropy.replace = {
	a = { bg = colors.white, fg = colors.black, gui = "bold" },
	b = { bg = colors.lightgray, fg = colors.white },
	c = { bg = colors.black, fg = colors.white },
}

LowEntropy.command = {
	a = { bg = colors.white, fg = colors.black },
	b = { bg = colors.black, fg = colors.white },
	c = { bg = colors.lightgray, fg = colors.black },
}

LowEntropy.inactive = {
	a = { bg = colors.black, fg = colors.white, gui = "bold" },
	b = { bg = colors.black, fg = colors.white },
	c = { bg = colors.black, fg = colors.white },
}

-- TODO(elsuizo:2021-11-08): hacer que nos diga la linea donde esta el trailing como en airline
-- detecta cuando tenemos un trailing whitespace
local function trailing()
	return vim.fn.search([[\s\+$]], "nw") ~= 0 and "TW" or ""
end

-- lualine setup
require("lualine").setup({
	options = {
		theme = LowEntropy,
	},
})
