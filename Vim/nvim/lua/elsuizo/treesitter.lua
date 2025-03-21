local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
   highlight = {
      enable = true,
      disable = { "python", "lua", "markdown", "rust", "cpp" },
   },
   indent = {
      enable = true,
      disable = {},
   },
   ensure_installed = {
      "markdown",
      "markdown_inline",
      "tsx",
      "typescript",
      "javascript",
      "toml",
      "json",
      "yaml",
      "css",
      "html",
      "lua",
      "rust",
      "python",
      "haskell",
      "ocaml",
      "c_sharp",
      "gdscript",
      "cpp"
   },
   --NOTE(elsuizo: 2023-05-10): esto utiliza el package de autotags
   autotag = {
      enable = true,
   },
   context_commentstring = {
      enable         = true,
      enable_autocmd = false,
   }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

-- esto es para que el preview no utilice treesitter, porque siempre queda
-- feo...
require('telescope').setup {
   defaults = {
      preview = {
         treesitter = false
      }
   },
}
