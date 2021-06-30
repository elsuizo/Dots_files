--  ___| |___ _   _(_)_______    _ ____   _(_)_ __ ___   | |_   _  __ _
 -- / _ \ / __| | | | |_  / _ \  | '_ \ \ / / | '_ ` _ \  | | | | |/ _` |
 -- | __/ \__ \ |_| | |/ / (_) | | | | \ V /| | | | | | |_| | |_| | (_| |
 -- \___|_|___/\__,_|_/___\___/  |_| |_|\_/ |_|_| |_| |_(_)_|\__,_|\__,_|

-- TODO(elsuizo:2021-03-31) iniciamos el camino en lua...
-- - [X] reescribir los comandos en lua
-- - [X] Hacer que ande piola el lspconfig para typescript, c/c++ y python
--    - creo que anda todo bien por lo menos lo que probe...
-- - [X] Falta la linea a los 80
-- - [X] hacer que ande bien undoooo
-- - [X] hacer que ande bien los snippets
-- - [X] faltan los comandos de Rust para compilar con `:make build` ...etc
--  - Anda un poco lento el `:make check`
-- - [ ] hacer que ande las italics
--    - tampoco me disgusta mucho sin italics
-- - [ ] hacer que el borde de la terminal sea blanco y negro
-- - [X] falta poner el nowrap para que no corte las lineas
-- - [X] falta los headers cuando abrimos un archivo
--    - Por ahora uso un snippet
-- - [ ] Ver de algo para reemplazar una variable en visual mode, lo teniamos con <leader>r pero no anda
-- - [ ] Ver si podemos tener el :find word cuando nos paramos en una palabra y la buscamos en todo el proyecto

-- the fucking leader
vim.g.mapleader = ','

require('plugins')       -- "lua/plugins.lua"
require('colors')        -- "lua/colors.lua"
require('key_mappings')  -- "lua/key_mappings.lua"
require('options')       -- "lua/options.lua"
require('variables')     -- "lua/variables.lua" -- TODO(elsuizo:2021-06-28): este archivo parece que no se usa...
require('auto_commands') -- "lua/auto_commands.lua"
