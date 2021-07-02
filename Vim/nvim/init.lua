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
--    - -- NOTE(elsuizo:2021-07-01): ya tengo andando el snippet con todo lo que tenia antes asi que me quedo con esta solucion
--    - aparte es mejor porque elegis cuando va o no, en lugar de que se ponga siempre...
-- - [ ] Ver de algo para reemplazar una variable en visual mode, lo teniamos con <leader>r pero no anda
-- - [X] Ver si podemos tener el :find word cuando nos paramos en una palabra y la buscamos en todo el proyecto
--    - piolaaa es una funcion "build-in" en telescope, yo la mapeo a <leader>s porque es lo mas parecido a lo que tenia
--    antes usaba S pero es un comando que se usa ya cuando queres borrar toda
--    la line y empezar en el 0 de la misma lineaa en INSERT mode
-- - [ ] Creo que capaz falte un lualine para ver tener siempre presente que branch estamos y otras cositas...

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
