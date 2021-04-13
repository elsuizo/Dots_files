local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.cmd("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

return require "packer".startup(
function(use)
  -- Packer can manage itself as an optional plugin
  use {"wbthomason/packer.nvim"}
  use {"jiangmiao/auto-pairs"}
  use {"tpope/vim-repeat"}
  use {"tpope/vim-surround"}
  use {"scrooloose/nerdtree"}
  -- TODO(elsuizo): estos de tmux no los uso creo
  -- use {"tmux-plugins/vim-tmux"}
  -- use {"tmux-plugins/vim-tmux-focus-events"}
  --
  -- use {"Shougo/neosnippet.vim"} -- esto no se si lo voy a seguir usando
  -- use {"Shougo/neosnippet-snippets"} -- esto no se si lo voy a seguir usando
  use {"JuliaEditorSupport/julia-vim"}
  use {"majutsushi/tagbar"}
  use {"lervag/vimtex"}
  use {"chrisbra/csv.vim"}
  use {"roxma/vim-tmux-clipboard"}
  use {"racer-rust/vim-racer"}
  use {"alaric/neovim-visor"}
  use {
     'nvim-telescope/telescope.nvim',
     requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {
     'hoob3rt/lualine.nvim',
     requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {"tomtom/tcomment_vim"}
  use {"matze/vim-move"}
  use {"neovim/nvim-lspconfig"}
  use {"hrsh7th/nvim-compe"}
  -- Colors
  use {"morhetz/gruvbox"}
  use {"arzg/vim-colors-xcode"}
  use {"chuling/vim-equinusocio-material"}
  use {"elsuizo/monosvkem"}
  use {"neutaaaaan/iosvkem"}

  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  use 'kosayoda/nvim-lightbulb'
  use 'mfussenegger/nvim-jdtls'
  use 'kabouzeid/nvim-lspinstall'
  use {'norcalli/snippets.nvim'}
  use {'norcalli/ui.nvim'}

  -- Editor Config
  -- use {"editorconfig/editorconfig-vim"}
  -- Rust
  use {"rust-lang/rust.vim"}
  -- JS/TS
  -- use {"othree/yajs.vim"}
  -- use {"MaxMEllon/vim-jsx-pretty"}
  -- use {"heavenshell/vim-jsdoc"}
  -- use {"elzr/vim-json"}
  -- use {"HerringtonDarkholme/yats.vim"}
  -- use {"Quramy/vison"}
  -- use {"jxnblk/vim-mdx-js"}
  -- HTML
  -- use {"othree/html5.vim"}
  -- use {"mattn/emmet-vim"}
  -- use {"posva/vim-vue"}
  -- use {"leafOfTree/vim-svelte-plugin"}
  -- use {"skwp/vim-html-escape"}
  -- use {"kana/vim-textobj-user"}
  -- use {"whatyouhide/vim-textobj-xmlattr"}
  -- use {"pedrohdz/vim-yaml-folds"}
  -- CSS
  -- use {"hail2u/vim-css3-syntax"}
  -- use {
  --   "norcalli/nvim-colorizer.lua",
  --   config = function()
  --     require "colorizer".setup()
  --   end
  -- }
  -- Swift
  -- use {"keith/swift.vim"}
  -- use {"gfontenot/vim-xcode"}
  -- Reason
  -- use{ "reasonml-editor/vim-reason-plus" }
  -- Go
  -- use{ "fatih/vim-go" }
  -- Lua
  -- use {"tbastos/vim-lua"}
  -- -- -- Local
  -- use {"~/GitHub/mhartington/formatter.nvim"}
  -- use {"~/GitHub/mhartington/vim-folds"}
  -- use {"~/GitHub/mhartington/oceanic-next"}

  -- use {"nvim-treesitter/nvim-treesitter"}
  -- use {"nvim-treesitter/nvim-treesitter-angular"}
  -- use {"serenadeai/tree-sitter-scss"}
  -- use {'ikatyang/tree-sitter-markdown'}

  -- use {"nvim-treesitter/playground"}
  -- use {"nvim-lua/completion-nvim"}
  -- use {"hrsh7th/nvim-compe"}

  -- use {"neovim/nvim-lspconfig"}
  -- use {"glepnir/lspsaga.nvim"}
  -- --
  -- use {"nvim-telescope/telescope.nvim"}
  -- use {"nvim-telescope/telescope-github.nvim"}
  -- use {"nvim-telescope/telescope-packer.nvim"}
  -- use {"nvim-telescope/telescope-node-modules.nvim"}
  -- use {"nvim-telescope/telescope-fzy-native.nvim"}

  -- use {
  --   "kyazdani42/nvim-web-devicons",
  --   -- config = function()
  --   --   require "nvim-web-devicons".setup {
  --   --     overrides = {
  --   --       git = {icon = ""},
  --   --       js = {icon = ""},
  --   --       ts = {icon = "ﯤ"},
  --   --       vim = {icon = ""},
  --   --       css = {icon = ""},
  --   --       html = {icon = ""},
  --   --       json = {icon = ""},
  --   --       md = {icon = ""},
  --   --       sql = {icon = ""}
  --   --     },
  --   --   }
  --   -- end
  -- }
  -- use {"yamatsum/nvim-nonicons"}
  -- use {"mjlbach/neovim-ui"}
end
)
