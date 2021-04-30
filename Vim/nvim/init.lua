 --  ___| |___ _   _(_)_______    _ ____   _(_)_ __ ___   | |_   _  __ _
 -- / _ \ / __| | | | |_  / _ \  | '_ \ \ / / | '_ ` _ \  | | | | |/ _` |
 -- | __/ \__ \ |_| | |/ / (_) | | | | \ V /| | | | | | |_| | |_| | (_| |
 -- \___|_|___/\__,_|_/___\___/  |_| |_|\_/ |_|_| |_| |_(_)_|\__,_|\__,_|

-- TODO(elsuizo:2021-03-31) iniciamos el camino en lua...
-- - [ ] reescribir los comandos en lua
-- - [ ] hacer que ande bien undoooo
-- - [ ] hacer que ande bien los snippets

-- the fucking leader
vim.g.mapleader = ','

require('plugins')
require('key_mappings')
require('variables')
-- require('settings')
require('auto_commands')
require('colors')
require('options')
