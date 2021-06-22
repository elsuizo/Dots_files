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
-- - [ ] falta los headers cuando abrimos un archivo

-- the fucking leader
vim.g.mapleader = ','
-- "lua/plugins.lua"
require('plugins')
-- TODO(elsuizo:2021-05-10): pongo estos comentarios porque asi puedo ir con gf al archivo de una
-- "lua/colors.lua"
require('colors')
-- "lua/key_mappings.lua"
require('key_mappings')
-- "lua/options.lua"
require('options')
-- "lua/variables.lua"
require('variables')
-- "lua/auto_commands.lua"
require('auto_commands')
