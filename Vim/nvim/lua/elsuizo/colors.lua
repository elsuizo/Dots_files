-- los mejores colorschemes
-- vim.cmd("colorscheme Iosvkem")
vim.cmd("colorscheme Monosvkem")

-- TODO(elsuizo): esto parece que no anda
vim.cmd("hi Comment gui=italic cterm=italic term=italic")
-- vim.cmd("hi Keyword gui=italic")
-- vim.cmd("hi Keyword gui=italic")
-- vim.cmd("hi Identifier gui=italic")
-- vim.cmd("hi StorageClass gui=italic")
-- vim.cmd("hi jsLineComment gui=italic")
-- vim.cmd("hi xmlAttrib gui=italic")
-- vim.cmd("hi htmlArg gui=italic")
-- vim.cmd("hi pythonSelf gui=italic")

local Monosvkem = {  }

local colors = {
  black        = "#121212",
  white        = '#d7d7d7',
  red          = '#fb4934',
  green        = '#b8bb26',
  blue         = '#0056b7',
  yellow       = '#fe8019',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
}

Monosvkem.normal = {
  -- gui parameter is optional and behaves the same way as in vim's highlight command
  a = { bg = colors.white, fg = colors.black, gui = "bold", },
  b = { bg = colors.black, fg  = colors.white, },
  c = { bg = colors.black, fg = colors.gray }
}

Monosvkem.insert = {
  a = { bg = colors.blue, fg = colors.black, gui = "bold", },
  b = { bg = colors.black, fg = colors.white, },
  c = { bg = colors.lightgray, fg = colors.white }
}


Monosvkem.visual = {
  a = { bg = colors.white, fg = colors.black, gui = "bold", },
  b = { bg = colors.red, fg = colors.white, },
  c = { bg = colors.lightgray, fg = colors.black },
}

Monosvkem.replace = {
  a = { bg = colors.red, fg = colors.black, gui = "bold", },
  b = { bg = colors.lightgray, fg = colors.white, },
  c = { bg = colors.black, fg = colors.white },
}

Monosvkem.command = {
  a = { bg = colors.red, fg = colors.black, gui = "bold", },
  b = { bg = colors.lightgray, fg = colors.white, },
  c = { bg = colors.inactivegray, fg = colors.black },
}

-- you can assign one colorscheme to another, if a colorscheme is
-- undefined it falls back to normal
Monosvkem.terminal = Monosvkem.normal

Monosvkem.inactive = {
  a = { bg = colors.red, fg = colors.gray, gui = "bold", },
  b = { bg = colors.red, fg = colors.gray, },
  c = { bg = colors.darkgray, fg = colors.gray },
}

-- require('lualine').setup {options = {theme = Monosvkem}}
