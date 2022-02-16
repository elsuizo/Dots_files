--  ___| |___ _   _(_)_______    _ ____   _(_)_ __ ___   | |_   _  __ _
 -- / _ \ / __| | | | |_  / _ \  | '_ \ \ / / | '_ ` _ \  | | | | |/ _` |
 -- | __/ \__ \ |_| | |/ / (_) | | | | \ V /| | | | | | |_| | |_| | (_| |
 -- \___|_|___/\__,_|_/___\___/  |_| |_|\_/ |_|_| |_| |_(_)_|\__,_|\__,_|

-- NOTE(elsuizo:2021-11-02): parece que migramos a nvim-cmp faltan conocer muchas
-- cositas de esto y ver si seguimos con el mismo engine de snippets o usamos otro
-- que sea soportado por nvim-cmp
-- vamos de a poco poniendole onda, ahora con C-p previous y con C-n al proximo
-- NOTE(elsuizo:2021-11-03): corregimos el problema con el Tab para que ande como andaba el anterior engine

-- TODO(elsuizo:2021-10-24): migrar hacia nvim-cmp

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

require 'elsuizo.plugins'       -- "lua/elsuizo/plugins.lua"
require 'elsuizo.auto_commands' -- "lua/elsuizo/auto_commands.lua"
require 'elsuizo.options'       -- "lua/elsuizo/options.lua"
require 'elsuizo.key_mappings'  -- "lua/elsuizo/key_mappings.lua"
require 'elsuizo.colors'        -- "lua/elsuizo/colors.lua"
require 'elsuizo.autocomplete'  -- "lua/elsuizo/autocomplete.lua"
require 'elsuizo.snippets'      -- "lua/elsuizo/snippets.lua"
