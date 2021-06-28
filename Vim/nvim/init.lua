--  ___| |___ _   _(_)_______    _ ____   _(_)_ __ ___   | |_   _  __ _
 -- / _ \ / __| | | | |_  / _ \  | '_ \ \ / / | '_ ` _ \  | | | | |/ _` |
 -- | __/ \__ \ |_| | |/ / (_) | | | | \ V /| | | | | | |_| | |_| | (_| |
 -- \___|_|___/\__,_|_/___\___/  |_| |_|\_/ |_|_| |_| |_(_)_|\__,_|\__,_|

-- TODO(elsuizo:2021-03-31) iniciamos el camino en lua...
-- - [ ] reescribir los comandos en lua
-- - [X] hacer que ande bien undoooo
--  - Al final era por la instalacion que estaba haciendo(con la instalacion desde aur anda)
-- - [X] hacer que ande bien los snippets
-- - [ ] hacer que ande las italics
-- - [ ] hacer que el borde de la terminal sea blanco y negro
-- - [X] falta los headers cuando abrimos un archivo
--    - Esto lo puedo solucionar con un snippets facil

-- the fucking leader
vim.g.mapleader = ','

require('plugins')       -- "lua/plugins.lua"
require('colors')        -- "lua/colors.lua"
require('key_mappings')  -- "lua/key_mappings.lua"
require('options')       -- "lua/options.lua"
require('variables')     -- "lua/variables.lua"
require('auto_commands') -- "lua/auto_commands.lua"
