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
   'jiangmiao/auto-pairs',                                                                  -- smart autopairs
   'JuliaEditorSupport/julia-vim',                                                          -- Julia language support
   'fedepujol/move.nvim',                                                                   -- move blocks of code
   'lervag/vimtex',                                                                         -- for work with tex files
   'rust-lang/rust.vim',                                                                    -- Rust language support
   'chrisbra/csv.vim',                                                                      -- Visualize csv files
   'elsuizo/vim-colors-paramount-suizo',                                                    -- personal colorscheme
   'neutaaaaan/iosvkem',                                                                    -- one of the best colorschemes
   'tomtom/tcomment_vim',                                                                   -- comment lines or blocks of code
   'elsuizo/monosvkem',                                                                     -- the best colorscheme
   'roxma/vim-tmux-clipboard',                                                              -- to get nice clipboard interface with tmux panes
   'alaric/neovim-visor',                                                                   -- open/close the terminal with Alt-t
   'nvim-lua/plenary.nvim',                                                                 -- async support for lua
   'nvim-telescope/telescope.nvim',                                                         -- fuzzy finder and more...
   'nvim-telescope/telescope-fzy-native.nvim',                                              -- fuzzy finder and more...
   'cljoly/telescope-repo.nvim',                                                            -- for finding stuff relative to a specific folder
   'kyazdani42/nvim-web-devicons',                                                          -- for nice icons
   'romgrk/barbar.nvim',                                                                    -- to visualize the buffers in the superior bar
   'ziglang/zig.vim',                                                                       -- zig language support
   'neovim/nvim-lspconfig',                                                                 -- lsp neovim support
   "L3MON4D3/LuaSnip",                                                                      -- snippet engine
   "rafamadriz/friendly-snippets",                                                          -- a bunch of snippets to use
   "saadparwaiz1/cmp_luasnip",                                                              -- snippet completions
   "hrsh7th/cmp-nvim-lsp-signature-help",                                                   -- show function and methods signature
   "hrsh7th/cmp-buffer" ,                                                                   -- autocomplete buffer words
   "hrsh7th/cmp-nvim-lsp" ,                                                                 -- autocomplete lsp stuff
   "hrsh7th/cmp-path" ,                                                                     -- autocomplete paths
   "hrsh7th/cmp-nvim-lua" ,                                                                 -- autocomplete for lua
   "tamago324/cmp-zsh" ,                                                                    ---autocomplete for zsh
   "hrsh7th/cmp-cmdline" ,                                                                  -- autocomplete for neovim command line terminal
   "ray-x/cmp-treesitter" ,                                                                 -- autocomplete treesitter support
   "hrsh7th/nvim-cmp" ,                                                                     -- autocomplete engine
   "windwp/nvim-ts-autotag",                                                                -- to close automagically tags
   {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,   -- treesitter support
   },
   {
     'nvim-tree/nvim-tree.lua',
     requires = {
       'nvim-tree/nvim-web-devicons', -- optional, for file icons
     },                                                                                     -- tree folder visualization
     tag = 'nightly' -- optional, updated every week. (see issue #1193)
   },
   {
     'hoob3rt/lualine.nvim',
     requires = {'kyazdani42/nvim-web-devicons', opt = true}                                -- state command visualization
   },
   -- -- databases stuff
   "tpope/vim-dadbod",                                                                      -- database visualization
   "tpope/vim-dotenv",                                                                      -- .env files support
   {
      'kristijanhusak/vim-dadbod-ui',
      requires = {
         'tpope/vim-dadbod',                                                                -- database visualization
         'tpope/vim-dotenv',
      }
   },
})
