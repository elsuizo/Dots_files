--  ___| |___ _   _(_)_______    _ ____   _(_)_ __ ___   | |_   _  __ _
-- / _ \ / __| | | | |_  / _ \  | '_ \ \ / / | '_ ` _ \  | | | | |/ _` |
-- | __/ \__ \ |_| | |/ / (_) | | | | \ V /| | | | | | |_| | |_| | (_| |
-- \___|_|___/\__,_|_/___\___/  |_| |_|\_/ |_|_| |_| |_(_)_|\__,_|\__,_|

-------------------------------------------------------------------------
--                      config
-------------------------------------------------------------------------
--NOTE(elsuizo: 2023-05-11): mayor clean-up
--NOTE(elsuizo: 2024-08-16): migrate colorscheme to the new colorbuddy and
--NOTE(elsuizo: 2025-04-04): new config with one file configuration for plugin and lsp
--simplify
-- TODO(elsuizo:2025-04-07): lo que faltaria
-- [X] Sacar el underline de rust-analyzer
-- [X] No se si me sirve mucho el plugin de comentarios
-- [X] Agregamos bufferline con una configuracion basica
-- [ ] Habria que arreglar los bordes de la terminal flotante
-- [ ] se pueden hacer una bocha de cosas con el plugin de la terminal(por
-- ejemplo que corra el comando que queremos dentro de ella)
-- [ ] Tambien con el plugin de autopairs se pueden configurar un monton de
-- cosas que podrian ser utiles como por ejemplo el famoso $$ de latex

-- the fucking leader
vim.g.mapleader = ","

require("config.lazy")
require("config.options")
require("config.keymaps")
require("config.autocommands")
require("config.diagnostic")
require("config.colors_setup")
require("config.snippets")
