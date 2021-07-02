-- los mejores colorschemes
-- vim.cmd("colorscheme Iosvkem")
vim.cmd("colorscheme Monosvkem")

-- custom colorscheme for lualine
local Monosvkem = {  }

local colors = {
  black        = "#121212",
  white        = '#d7d7d7',
  red          = '#fb4934',
  green        = '#b8bb26',
  blue         = '#0056b7',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
}

Monosvkem.normal = {
  a = { bg = colors.white, fg = colors.black, gui = "bold", },
  b = { bg = colors.blue, fg = colors.white, },
  c = { bg = colors.black, fg = colors.white },
}

Monosvkem.insert = {
  a = { bg = colors.blue, fg = colors.black, gui = "bold", },
  b = { bg = colors.black, fg = colors.white },
  c = { bg = colors.lightgray, fg = colors.white }
}

Monosvkem.visual = {
  a = { bg = colors.white, fg = colors.black, gui = "bold", },
  b = { bg = colors.blue, fg = colors.white, },
  c = { bg = colors.lightgray, fg = colors.black },
}

Monosvkem.replace = {
  a = { bg = colors.white, fg = colors.black, gui = "bold", },
  b = { bg = colors.lightgray, fg = colors.white, },
  c = { bg = colors.black, fg = colors.white },
}

Monosvkem.command = {
  a = { bg = colors.white, fg = colors.black},
  b = { bg = colors.black, fg = colors.white, },
  c = { bg = colors.lightgray, fg = colors.black },
}

Monosvkem.inactive = {
  a = { bg = colors.black, fg = colors.white, gui = "bold", },
  b = { bg = colors.black, fg = colors.white, },
  c = { bg = colors.black, fg = colors.white, },
}

require('lualine').setup {options = {theme = Monosvkem}}
