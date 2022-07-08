local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
   execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
   execute 'packadd packer.nvim'
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
-- Packer can manage itself
   use 'wbthomason/packer.nvim'
   use 'jiangmiao/auto-pairs'                    -- smart autopairs
   use 'scrooloose/nerdtree'                     -- file mannager
   use 'JuliaEditorSupport/julia-vim'            -- Julia language support
   use 'matze/vim-move'                          -- move blocks of code
   use 'lervag/vimtex'                           -- for work with tex files
   use 'rust-lang/rust.vim'                      -- Rust language support
   -- use 'chrisbra/csv.vim'                        -- Visualize csv files
   use 'elsuizo/vim-colors-paramount-suizo'      -- personal colorscheme
   use 'neutaaaaan/iosvkem'                      -- one of the best colorschemes
   use 'tomtom/tcomment_vim'                     -- comment lines or blocks of code
   use 'elsuizo/monosvkem'                       -- the best colorscheme
   use 'roxma/vim-tmux-clipboard'                -- to get nice clipboard interface with tmux panes
   use 'alaric/neovim-visor'                     -- open/close the terminal with Alt-t
   -- telescope
   use 'nvim-lua/plenary.nvim'
   use 'nvim-telescope/telescope.nvim'           -- fuzzy finder and more...
   use 'nvim-telescope/telescope-fzy-native.nvim'-- fuzzy finder and more...
   use 'cljoly/telescope-repo.nvim'              -- for finding stuff relative to a specific folder
   use 'kyazdani42/nvim-web-devicons'
   use 'romgrk/barbar.nvim'                      -- to visualize the buffers in the superior bar
   -- use 'ziglang/zig.vim'                         -- zig language support
   use 'neovim/nvim-lspconfig'                   -- lsp neovim support

   use "L3MON4D3/LuaSnip"                        --snippet engine
   use "rafamadriz/friendly-snippets"            -- a bunch of snippets to use
   use "saadparwaiz1/cmp_luasnip"                -- snippet completions
   use "jbyuki/venn.nvim"
   use {
   "hrsh7th/nvim-cmp",
   requires = {
     { "hrsh7th/cmp-buffer" },
     { "hrsh7th/cmp-nvim-lsp" },
     { "hrsh7th/cmp-path" },
     { "hrsh7th/cmp-nvim-lua" },
     { "ray-x/cmp-treesitter" },
     { "hrsh7th/nvim-cmp" },
     { "hrsh7th/cmp-vsnip" },
     { "hrsh7th/vim-vsnip" },
     { "Saecki/crates.nvim" },
     -- { "hrsh7th/cmp-cmdline" },
     { "tamago324/cmp-zsh" },
   },
   }
   use 'nvim-treesitter/nvim-treesitter'
   use {
     "folke/trouble.nvim",
     requires = "kyazdani42/nvim-web-devicons",
     config = function()
       require("trouble").setup {
          -- TODO(elsuizo:2022-03-08): ver si quiero cambiar algo de la
          -- configuracion default
       }
     end
   }
   use {
     'hoob3rt/lualine.nvim',
     requires = {'kyazdani42/nvim-web-devicons', opt = true}
   }

end)
