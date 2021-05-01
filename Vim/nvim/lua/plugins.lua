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
   use 'tpope/vim-repeat'                        -- to repeat crazy paterns with .
   use 'scrooloose/nerdtree'                     -- file mannager
   use 'tpope/vim-surround'                      -- augment the surround capacity
   use 'Shougo/neosnippet.vim'                   -- code snippets pluging
   use 'Shougo/neosnippet-snippets'              -- more code snippets
   use 'JuliaEditorSupport/julia-vim'            -- Julia language support
   use 'majutsushi/tagbar'                       -- navigation code bar
   use 'matze/vim-move'                          -- move blocks of code
   use 'lervag/vimtex'                           -- for work with tex files
   use 'rust-lang/rust.vim'                      -- Rust language support
   use 'chrisbra/csv.vim'                        -- Visualize csv files
   use 'elsuizo/vim-colors-paramount-suizo'      -- personal colorscheme
   use 'racer-rust/vim-racer'                    -- Rust code navigation
   use 'neutaaaaan/iosvkem'                      -- one of the best colorschemes
   use 'tomtom/tcomment_vim'                     -- comment lines of blocks of code
   use 'elsuizo/monosvkem'                       -- the best colorscheme
   use 'roxma/vim-tmux-clipboard'                -- to get nice clipboard interface with tmux panes

   -- telescope
   use 'nvim-lua/popup.nvim'
   use 'nvim-lua/plenary.nvim'
   use 'nvim-telescope/telescope.nvim'
   -- buffer views
   use 'kyazdani42/nvim-web-devicons'
   use 'romgrk/barbar.nvim'                      -- to visualize the buffers in the superior bar
   -- floating terminal
   use 'voldikss/vim-floaterm'                   -- to get a nice floating terminal

end)
