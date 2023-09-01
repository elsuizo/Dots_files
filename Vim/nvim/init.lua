--  ___| |___ _   _(_)_______    _ ____   _(_)_ __ ___   | |_   _  __ _
-- / _ \ / __| | | | |_  / _ \  | '_ \ \ / / | '_ ` _ \  | | | | |/ _` |
-- | __/ \__ \ |_| | |/ / (_) | | | | \ V /| | | | | | |_| | |_| | (_| |
-- \___|_|___/\__,_|_/___\___/  |_| |_|\_/ |_|_| |_| |_(_)_|\__,_|\__,_|

-------------------------------------------------------------------------
--                      config
-------------------------------------------------------------------------
--NOTE(elsuizo: 2023-05-11): mayor clean-up
-- the fucking leader
vim.g.mapleader = ','

require 'elsuizo.lazy_plugins'   -- "lua/elsuizo/lazy_plugins.lua"
-- TODO(elsuizo: 2023-05-12): hacer nuestro propio colorscheme llamado: lowentropy
-- [  ] faltaria que la carpeta de luatree no sea rosa...
-- [  ] el numero de `CursorLineNr` no se porque no se cambia...
require 'elsuizo.options'        -- "lua/elsuizo/options.lua"
require 'elsuizo.colorscheme'    -- "lua/elsuizo/colorscheme.lua"
require 'elsuizo.colors'         -- "lua/elsuizo/colors.lua"
require 'elsuizo.key_mappings'   -- "lua/elsuizo/key_mappings.lua"
require 'elsuizo.auto_commands'  -- "lua/elsuizo/auto_commands.lua"
require 'elsuizo.snippets'       -- "lua/elsuizo/snippets.lua"
require 'elsuizo.autocomplete'   -- "lua/elsuizo/autocomplete.lua"
require 'elsuizo.terminal'       -- "lua/elsuizo/terminal.lua"
-- require 'elsuizo.database'       -- "lua/elsuizo/database.lua"
require 'elsuizo.tree'           -- "lua/elsuizo/tree.lua"
require 'elsuizo.treesitter'     -- "lua/elsuizo/treesitter.lua"
-- require 'elsuizo.neorg'          -- "lua/elsuizo/neorg.lua"
-- require 'elsuizo.web-stuff'     -- "lua/elsuizo/web-stuff.lua"
