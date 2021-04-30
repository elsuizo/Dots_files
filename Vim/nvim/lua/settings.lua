-- global settings

local cmd = vim.cmd
-- number lines
vim.wo.number = true
-- relative gap
vim.wo.relativenumber = true
-- dont cut the lines
-- TODO
-- vim.o.nowrap = true
-- auto indent
vim.o.ai = true
-- smart indent
vim.o.si = true
-- 1tab == 3spaces
vim.bo.shiftwidth = 3
vim.bo.tabstop = 3
-- backups
vim.o.backupdir = [[~/.vim/backup/]]
vim.o.directory = [[~/.vim/swap/]]
vim.o.undodir = [[~/.vim/undo/]]

-- colorscheme
-- cmd 'colorscheme Monosvkem'
