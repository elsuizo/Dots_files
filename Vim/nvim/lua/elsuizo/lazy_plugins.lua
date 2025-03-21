-- lazy initialization
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
   vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable", -- latest stable release
      lazypath,
   })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
   {
      'stevearc/conform.nvim', -- formatting plugin
      opts = {},
   },
   'jiangmiao/auto-pairs', -- smart autopairs
   {
      'yorickpeterse/vim-paper',
      commit = "47f6ca5452a718c2e3b95a9c75932d34b2a8f5ae"
   },
   "yorik1984/newpaper.nvim",
   -- 'JuliaEditorSupport/julia-vim',                                                       -- Julia language support
   {
      "vhyrro/luarocks.nvim",
      priority = 1000, -- We'd like this plugin to load first out of the rest
      config = true,   -- This automatically runs `require("luarocks-nvim").setup()`
   },
   {
      "nvim-neorg/neorg",
      dependencies = { "luarocks.nvim" },
      -- put any other flags you wanted to pass to lazy here!
   },
   'fedepujol/move.nvim', -- move blocks of code
   -- 'lervag/vimtex',                                                                         -- for work with tex files
   'rust-lang/rust.vim',  -- Rust language support
   -- 'chrisbra/csv.vim',                                                                      -- Visualize csv files
   -- 'elsuizo/vim-colors-paramount-suizo',                                                    -- personal colorscheme
   -- 'neutaaaaan/iosvkem',                                                                    -- one of the best colorschemes
   'tomtom/tcomment_vim',      -- comment lines or blocks of code
   'elsuizo/monosvkem',        -- the best colorscheme
   'roxma/vim-tmux-clipboard', -- to get nice clipboard interface with tmux panes
   -- 'alaric/neovim-visor',                                                                   -- open/close the terminal with Alt-t
   -- 'nvim-lua/plenary.nvim',                    -- async support for lua
   'nvim-telescope/telescope.nvim',            -- fuzzy finder and more...
   'nvim-telescope/telescope-fzy-native.nvim', -- fuzzy finder and more...
   'cljoly/telescope-repo.nvim',               -- for finding stuff relative to a specific folder
   -- {
   --    'romgrk/barbar.nvim',         -- bar to visualize buffers and tabs
   --    dependencies = {
   --       'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
   --    },
   -- },
   'ziglang/zig.vim',                     -- zig language support
   'neovim/nvim-lspconfig',               -- lsp neovim support
   "L3MON4D3/LuaSnip",                    -- snippet engine
   "rafamadriz/friendly-snippets",        -- a bunch of snippets to use
   "saadparwaiz1/cmp_luasnip",            -- snippet completions
   "hrsh7th/cmp-nvim-lsp-signature-help", -- show function and methods signature
   "hrsh7th/cmp-buffer",                  -- autocomplete buffer words
   "hrsh7th/cmp-nvim-lsp",                -- autocomplete lsp stuff
   "hrsh7th/cmp-path",                    -- autocomplete paths
   "hrsh7th/cmp-nvim-lua",                -- autocomplete for lua
   "tamago324/cmp-zsh",                   ---autocomplete for zsh
   "hrsh7th/cmp-cmdline",                 -- autocomplete for neovim command line terminal
   "ray-x/cmp-treesitter",                -- autocomplete treesitter support
   "hrsh7th/nvim-cmp",                    -- autocomplete engine
   -- { "catppuccin/nvim",          name = "catppuccin", priority = 1000 },
   -- "windwp/nvim-ts-autotag",                                                             -- to close automagically tags
   {
      'tjdevries/colorbuddy.nvim',
   }, -- to create custom colorschemes
   {
      'hat0uma/csvview.nvim',
      config = function()
         require('csvview').setup()
      end
   },
   "numToStr/FTerm.nvim", -- floating terminal
   {
      'stevearc/aerial.nvim',
      opts = {},
      -- Optional dependencies
      dependencies = {
         "nvim-treesitter/nvim-treesitter",
         "nvim-tree/nvim-web-devicons"
      },
   },
   {
      "mistricky/codesnap.nvim",
      build = "make build_generator",
      keys = {
         { "<leader>cc", "<cmd>CodeSnap<cr>",     mode = "x", desc = "Save selected code snapshot into clipboard" },
         { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
      },
      opts = {
         save_path = "~/Pictures",
         has_breadcrumbs = true,
         bg_theme = "bamboo",
      },
   },
   {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end, -- treesitter support
   },
   {
      'nvim-tree/nvim-tree.lua',
      requires = {
         'nvim-tree/nvim-web-devicons',
      }, -- tree folder visualization
   },
   {
      'hoob3rt/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- state command visualization
   },
   -- -- databases stuff
   "tpope/vim-dadbod", -- database visualization
   "tpope/vim-dotenv", -- .env files support
   {
      'kristijanhusak/vim-dadbod-ui',
      requires = {
         'tpope/vim-dadbod', -- database visualization
         'tpope/vim-dotenv',
      }
   },
})
