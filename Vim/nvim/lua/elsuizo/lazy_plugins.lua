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
-- example using a list of specs with the default options

require("lazy").setup({
   'wbthomason/packer.nvim',
   'jiangmiao/auto-pairs',                    -- smart autopairs
   'JuliaEditorSupport/julia-vim',            -- Julia language support
   'matze/vim-move',                          -- move blocks of code
   'lervag/vimtex',                           -- for work with tex files
   'rust-lang/rust.vim',                     -- Rust language support
   'chrisbra/csv.vim',                        -- Visualize csv files
   'elsuizo/vim-colors-paramount-suizo',      -- personal colorscheme
   'neutaaaaan/iosvkem',                      -- one of the best colorschemes
   'tomtom/tcomment_vim',                     -- comment lines or blocks of code
   'elsuizo/monosvkem',                       -- the best colorscheme
   'roxma/vim-tmux-clipboard',                -- to get nice clipboard interface with tmux panes
   'alaric/neovim-visor',                     -- open/close the terminal with Alt-t
   'nvim-lua/plenary.nvim',
   'nvim-telescope/telescope.nvim',           -- fuzzy finder and more...
   'nvim-telescope/telescope-fzy-native.nvim',-- fuzzy finder and more...
   'cljoly/telescope-repo.nvim',              -- for finding stuff relative to a specific folder
   'kyazdani42/nvim-web-devicons',
   'romgrk/barbar.nvim',                      -- to visualize the buffers in the superior bar
   'ziglang/zig.vim',                         -- zig language support
   'neovim/nvim-lspconfig',                   -- lsp neovim support
   "L3MON4D3/LuaSnip",                        -- snippet engine
   "rafamadriz/friendly-snippets",            -- a bunch of snippets to use
   "saadparwaiz1/cmp_luasnip",                -- snippet completions
   "jbyuki/venn.nvim",
   "tek256/simple-dark",
   "hrsh7th/cmp-nvim-lsp-signature-help",
   "hrsh7th/cmp-buffer" ,
   "hrsh7th/cmp-nvim-lsp" ,
   "hrsh7th/cmp-path" ,
   "hrsh7th/cmp-nvim-lua" ,
   "ray-x/cmp-treesitter" ,
   "hrsh7th/nvim-cmp" ,
   "hrsh7th/cmp-vsnip" ,
   "hrsh7th/vim-vsnip" ,
   "Saecki/crates.nvim" ,
   "hrsh7th/cmp-cmdline" ,
   "tamago324/cmp-zsh" ,
   "hrsh7th/cmp-nvim-lsp-signature-help",
   "folke/trouble.nvim",
   "tpope/vim-dadbod",
   "tpope/vim-dotenv",
   "RRethy/nvim-base16",
   {
     "folke/trouble.nvim",
     requires = "kyazdani42/nvim-web-devicons",
     config = function()
       require("trouble").setup {
          -- TODO(elsuizo:2022-03-08): ver si quiero cambiar algo de la
          -- configuracion default
       }
     end
   },
   {
     'nvim-tree/nvim-tree.lua',
     requires = {
       'nvim-tree/nvim-web-devicons', -- optional, for file icons
     },
     tag = 'nightly' -- optional, updated every week. (see issue #1193)
   },
   {
     'hoob3rt/lualine.nvim',
     requires = {'kyazdani42/nvim-web-devicons', opt = true}
   },
   -- -- databases stuff
   {
      'kristijanhusak/vim-dadbod-ui',
      requires = {
         'tpope/vim-dadbod',
         'tpope/vim-dotenv',
      }
   }
})
