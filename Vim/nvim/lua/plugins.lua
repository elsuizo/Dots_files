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
   use 'Shougo/neosnippet.vim'                   -- code snippets pluging
   use 'Shougo/neosnippet-snippets'              -- more code snippets
   use 'JuliaEditorSupport/julia-vim'            -- Julia language support
   use 'matze/vim-move'                          -- move blocks of code
   use 'lervag/vimtex'                           -- for work with tex files
   use 'rust-lang/rust.vim'                      -- Rust language support
   use 'chrisbra/csv.vim'                        -- Visualize csv files
   -- use 'elsuizo/vim-colors-paramount-suizo'      -- personal colorscheme
   -- use 'racer-rust/vim-racer'                    -- Rust code navigation
   use 'neutaaaaan/iosvkem'                      -- one of the best colorschemes
   use 'tomtom/tcomment_vim'                     -- comment lines or blocks of code
   use 'elsuizo/monosvkem'                       -- the best colorscheme
   use 'roxma/vim-tmux-clipboard'                -- to get nice clipboard interface with tmux panes
   use 'cespare/vim-toml'                        -- support to toml files
   use 'alaric/neovim-visor'                     -- open/close the terminal with Alt-t
   -- telescope
   use 'nvim-lua/popup.nvim'
   use 'nvim-lua/plenary.nvim'
   use 'nvim-telescope/telescope.nvim'           -- fuzzy finder and more...
   -- buffer views
   use 'kyazdani42/nvim-web-devicons'
   use 'romgrk/barbar.nvim'                      -- to visualize the buffers in the superior bar
   use 'ziglang/zig.vim'                             -- zig language support
   use 'rakr/vim-one'
   use 'neovim/nvim-lspconfig'                   -- lsp neovim support
   use 'folke/lsp-colors.nvim'
   -- use 'jacoborus/tender.vim'
   -- autocomplete engine
   -- use 'hrsh7th/nvim-compe'                   -- old autocomplete engine
   use 'hrsh7th/nvim-cmp'
   use 'hrsh7th/cmp-nvim-lsp'
   use 'hrsh7th/cmp-buffer'
   use 'hrsh7th/cmp-path'
   use 'hrsh7th/cmp-cmdline'

--  For ultisnips users.
--  Plug 'SirVer/ultisnips'
--  Plug 'quangnguyen30192/cmp-nvim-ultisnips'
   use {
     'hoob3rt/lualine.nvim',
     requires = {'kyazdani42/nvim-web-devicons', opt = true}
   }
end)
