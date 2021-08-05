--  ___| |___ _   _(_)_______    _ ____   _(_)_ __ ___   | |_   _  __ _
 -- / _ \ / __| | | | |_  / _ \  | '_ \ \ / / | '_ ` _ \  | | | | |/ _` |
 -- | __/ \__ \ |_| | |/ / (_) | | | | \ V /| | | | | | |_| | |_| | (_| |
 -- \___|_|___/\__,_|_/___\___/  |_| |_|\_/ |_|_| |_| |_(_)_|\__,_|\__,_|

-- NOTE(elsuizo:2021-08-05): saque lsp, lualine y autocompletado porque no me parece que sirvan demasiado(con telescope, racer
-- es mas que suficiente y aparte se siente muuucho mas liviano todo con cero latencia)

-- TODO(elsuizo:2021-07-01): Nueva seccion: pluggins para probar
-- - [ ] https://github.com/jbyuki/venn.nvim
-- Es un plugins que te ayuda a hacer diagramas re piolas!!!
-- - [ ] https://github.com/ElPiloto/sidekick.nvim
-- Es una alternativa a el famoso tagbar que usabamos antes
-------------------------------------------------------------------------
--                      config
-------------------------------------------------------------------------

-- the fucking leader
vim.g.mapleader = ','

require('plugins')       -- "lua/plugins.lua"
require('colors')        -- "lua/colors.lua"
require('options')       -- "lua/options.lua"
require('key_mappings')  -- "lua/key_mappings.lua"
require('auto_commands') -- "lua/auto_commands.lua"
