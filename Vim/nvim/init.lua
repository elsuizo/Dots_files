--  ___| |___ _   _(_)_______    _ ____   _(_)_ __ ___   | |_   _  __ _
-- / _ \ / __| | | | |_  / _ \  | '_ \ \ / / | '_ ` _ \  | | | | |/ _` |
-- | __/ \__ \ |_| | |/ / (_) | | | | \ V /| | | | | | |_| | |_| | (_| |
-- \___|_|___/\__,_|_/___\___/  |_| |_|\_/ |_|_| |_| |_(_)_|\__,_|\__,_|

-------------------------------------------------------------------------
--                      config
-------------------------------------------------------------------------
-- the fucking leader
vim.g.mapleader = ','

-- the fucking leader
require 'elsuizo.lazy_plugins'   -- "lua/elsuizo/lazy_plugins.lua"
require 'elsuizo.auto_commands'  -- "lua/elsuizo/auto_commands.lua"
require 'elsuizo.key_mappings'   -- "lua/elsuizo/key_mappings.lua"
require 'elsuizo.options'        -- "lua/elsuizo/options.lua"
require 'elsuizo.colors'         -- "lua/elsuizo/colors.lua"
require 'elsuizo.snippets'       -- "lua/elsuizo/snippets.lua"
require 'elsuizo.autocomplete'   -- "lua/elsuizo/autocomplete.lua"
require 'elsuizo.database'       -- "lua/elsuizo/database.lua"
require 'elsuizo.tree'           -- "lua/elsuizo/tree.lua"
require 'elsuizo.treesitter'     -- "lua/elsuizo/treesitter.lua"
-- require 'elsuizo.web-stuff'     -- "lua/elsuizo/web-stuff.lua"
