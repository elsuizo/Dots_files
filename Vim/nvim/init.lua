--  ___| |___ _   _(_)_______    _ ____   _(_)_ __ ___
-- / _ \ / __| | | | |_  / _ \  | '_ \ \ / / | '_ ` _ \
--|  __/ \__ \ |_| | |/ / (_) | | | | \ V /| | | | | | |
-- \___|_|___/\__,_|_/___\___/  |_| |_|\_/ |_|_| |_| |_|
--
--                  __ _
--  ___ ___  _ __  / _(_) __ _
-- / __/ _ \| '_ \| |_| |/ _` |
--| (_| (_) | | | |  _| | (_| |
-- \___\___/|_| |_|_| |_|\__, |
--                       |___/
-- transicion a lua: 11/04/21
-- esta basada en las cofiguraciones de Mike Hartington y de TJ DeVries
-- TODO(elsuizo) 12/04/21
-- - [  ] Me falta hacer andar las italics
-- - [X] Me faltaria reemplazar neosnippet con otro package hecho en lua
--  - [  ] puse un package que es en lua y parece que esta bueno, me faltaria agregar todo lo que tenia
-- - [X] configurar bien el autocompletado y el lsp
--  - lo tengo configurado pero faltaria hacer el ajuste fino
-- - [  ] Hacer un color propio para la status line
vim.cmd("filetype plugin indent on")
-- queremos que el leader sea lo primero que carga
vim.g.mapleader = ','

require('elsuizo.mappings')
require('elsuizo.options')
require('elsuizo.auto_comands')
require('elsuizo.plugins')
require('elsuizo.colors')
require('elsuizo.lsp')
require('elsuizo.snippets')
