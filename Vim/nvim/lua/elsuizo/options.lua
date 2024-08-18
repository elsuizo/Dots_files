-- options
local Type = { GLOBAL_OPTION = "o", WINDOW_OPTION = "wo", BUFFER_OPTION = "bo" }
local add_options = function(option_type, options)
   if type(options) ~= "table" then
      error 'options should be a type of "table"'
      return
   end
   local vim_option = vim[option_type]
   for key, value in pairs(options) do
      vim_option[key] = value
   end
end

local Option = {}
Option.g = function(options)
   add_options(Type.GLOBAL_OPTION, options)
end
Option.w = function(options)
   add_options(Type.WINDOW_OPTION, options)
end
Option.b = function(options)
   add_options(Type.BUFFER_OPTION, options)
end

Option.g {
   colorcolumn = "80",
   autoindent = true,
   smartindent = true,
   termguicolors = true,
   textwidth = 80,
   mouse = "a",
   hidden = true,
   showmode = false,
   timeoutlen = 3e3,
   tabstop = 3,
   shiftwidth = 3,
   cmdheight = 1,
   expandtab = true,
   conceallevel = 0,
   laststatus = 2,
   wrap = true,
   wrapmargin = 2,
   linebreak = false,
   list = true,
   listchars = "tab:»·,trail:-",
   wildmenu = true,
   wildmode = "full",
   autoread = true,
   fillchars = vim.o.fillchars .. "vert:│",
   undofile = true,
   undodir = os.getenv("HOME") .. "/.vim/undo/",
   virtualedit = "onemore",
   -- guicursor = "a:block-Cursor/lCursor",
   complete = ".,w,b,u,t,k",
   completeopt = "menu,menuone,noinsert,noselect",
   formatoptions = "jtcroql",
   inccommand = "nosplit",
   shortmess = "atIcF",
   isfname = table.concat(
      vim.tbl_filter(
         function(entry)
            if entry == "=" then
               return false
            else
               return true
            end
         end,
         vim.split(vim.o.isfname, ",")
      ),
      ","
   ),
   swapfile = false,
   diffopt = "internal,filler,closeoff,algorithm:patience,iwhiteall",
   splitbelow = true,
   emoji = true,
   indentexpr = "nvim_treesitter#indent()"
}

Option.b {
   swapfile = false,
   shiftwidth = 3,
   indentexpr = "nvim_treesitter#indent()"
}

Option.w {
   wrap = false,
   number = true,
   relativenumber = true,
   --numberwidth = 1,
   signcolumn = "no",
   spell = false,
   foldlevel = 99,
   -- foldmethod = "syntax",
   foldmethod = "indent",
   foldenable = true,
   foldexpr = "nvim_treesitter#foldexpr()",
   foldtext = "v:lua.foldText()",
   linebreak = true
}

vim.o.clipboard = "unnamedplus"

-- rust options
-- vim.g.rustfmt_command = "rustfmt"
-- vim.g.rustfmt_command = "cargo +nightly fmt"
vim.g.rustfmt_command = '/home/elsuizo/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rustfmt'

vim.g.rustfmt_autosave = 1
vim.g.rustfmt_emit_files = 1
vim.g.rustfmt_fail_silently = 1
vim.g.rust_clip_command = 'xclip -selection clipboard'

-- latex options
vim.g.vimtex_compiler_progname = 'nvr'
vim.g.tex_flavor = 'latex'

return Option
