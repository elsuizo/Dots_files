-- el mejor colorscheme
vim.cmd("colorscheme Monosvkem")
-- vim.cmd("colorscheme paper")
-- vim.cmd("colorscheme Iosvkem")
-- vim.cmd("colorscheme paramount-suizo")
-- vim.cmd("colorscheme base16-classic-dark")
-- vim.cmd("colorscheme base16-classic-light")
-- vim.cmd[[colorscheme tokyonight]]
-- lsp colors setup
vim.cmd [[
hi DiagnosticError ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#d02b61
hi DiagnosticWarn ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#6c9ef8
hi DiagnosticInfo ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#AEFA47
hi DiagnosticHint ctermbg=NONE ctermfg=NONE guibg=NONE guifg=#404040]]

-- cambiamos el color del menu del autocompletado
vim.cmd [[highlight Pmenu ctermbg=NONE guibg=gray]]
vim.cmd [[highlight PmenuSel ctermbg=NONE guibg=#404040]]
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

-- TODO(elsuizo:2021-11-08): hacer que nos diga la linea donde esta el trailing como en airline
-- detecta cuando tenemos un trailing whitespace
local function trailing()
  return vim.fn.search([[\s\+$]], 'nw') ~= 0 and 'TW' or ''
end

--NOTE(elsuizo: 2023-05-09): esto es para habilitar el theme onedark
-- require('onedark').setup {
--     style = 'warmer',
--     transparent = false,
--     ending_tildes = true,
--    -- Lualine options --
--     lualine = {
--         transparent = true, -- lualine center bar transparency
--     },
--     --NOTE(elsuizo: 2023-05-09): no quiero que aparezca el amaril... porque es
--     --mufaaaa
--     colors = {
--        yellow = "#fb4934",
--        dark_yellow = "#a89984",
--     }
-- }
--
-- require('onedark').load()
--
-------------------------------------------------------------------------
--                     catpuccin
-------------------------------------------------------------------------
-- -- -- catppuccin colorscheme
-- require("catppuccin").setup({
--     flavour = "latte", -- latte, frappe, macchiato, mocha
--     background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--     },
--     transparent_background = false,
--     show_end_of_buffer = true, -- show the '~' characters after the end of buffers
--     term_colors = false,
--     dim_inactive = {
--         enabled = false,
--         shade = "light",
--         percentage = 0.15,
--     },
--     no_italic = false, -- Force no italic
--     no_bold = false, -- Force no bold
--     styles = {
--         comments = { "italic" },
--         conditionals = {},
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--     },
--     color_overrides = {},
--     custom_highlights = {},
--     integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         telescope = false,
--         notify = false,
--         mini = false,
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--     },
-- })
--
-- -- setup must be called before loading
-- vim.cmd.colorscheme "catppuccin"
-- lualine setup
require('lualine').setup {
   options = {
      theme = Monosvkem,
      -- theme = "catppuccin",
      disabled_filetypes = {
         statusline = {},
         winbar = {},
         Tree = {}
      },
      -- diagnostics_color = {
      --    warn = { fg = '#dddddd'},
      -- }
   },
}
