-- my custom keymaps

-- normal mode keymaps
vim.keymap.set('n', '<C-j>', ':MoveLine(1)<CR>')
vim.keymap.set('n', '<C-k>', ':MoveLine(-1)<CR>')
vim.keymap.set('n', '<C-h>', ':MoveHChar(-1)<CR>')
vim.keymap.set('n', '<C-l>', ':MoveHChar(1)<CR>')
vim.keymap.set("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files()<cr>")
vim.keymap.set("n", "<leader>g", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.keymap.set("n", "<leader><leader>b", "<cmd>lua require('telescope.builtin').buffers()<cr>")
vim.keymap.set("n", "<leader>h", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
vim.keymap.set("n", "<leader>e", "<cmd>lua require('telescope.builtin').diagnostics()<cr>")
vim.keymap.set("n", "<leader>s", "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>")
vim.keymap.set("n", "<leader><leader>t", ":Telescope<cr>")
vim.keymap.set('n', '<LEADER>jd', '<cmd>lua require"telescope.builtin".lsp_definitions()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<LEADER>jv', '<cmd>lua require"telescope.builtin".lsp_definitions({jump_type="vsplit"})<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "<Leader><leader>T", ":set invlist<cr>")
-- floating terminal
vim.keymap.set('n', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
-- aerial toggle
vim.keymap.set('n', '<leader>a', '<cmd>AerialToggle!<CR>')
-- save
vim.keymap.set("n", "<Leader>w", ":w!<cr>")
-- kill the buffer
vim.keymap.set("n", "<Leader>k", ":bd<cr>")
-- clean highlights
vim.keymap.set("n", "<Leader><cr>", ":noh<cr>")
-- open the config
vim.keymap.set("n", "<Leader>c", ":e! ~/.config/nvim/init.lua<cr>")
-- go to the rigth
vim.keymap.set("n", "H", "^")
-- go to the left
vim.keymap.set("n", "L", "g_")
-- next buffer
vim.keymap.set("n", "<space>,", "<cmd>bnext<cr>")
-- previous buffer
vim.keymap.set("n", "<space>.", "<cmd>bprevious<cr>")
-- open lazy package manager
vim.keymap.set("n", "<Leader>u", "<cmd>Lazy<cr>")
-- open the quickfixlist
vim.keymap.set("n", "<Leader>o", ":copen<cr>")
-- disable the fucking arrows keys
vim.keymap.set('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('n', '<Right>', '<Nop>', { noremap = true, silent = true })
-- nvimtree keymaps
vim.keymap.set("n", "<C-\\>", ":NvimTreeToggle<CR>")
-- naviation around splits
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>k")
vim.keymap.set("n", "<A-l>", "<C-w>l")

-- insert mode keymaps
vim.keymap.set('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.keymap.set('i', '<Right>', '<Nop>', { noremap = true, silent = true })

-- visual mode keymaps
-- align blocks of text and keep them selected
vim.keymap.set('v', '<', '<gv', { noremap = true, silent = true })
vim.keymap.set('v', '>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<C-j>', ':MoveBlock(1)<CR>')
vim.keymap.set('v', '<C-k>', ':MoveBlock(-1)<CR>')
vim.keymap.set('v', '<C-h>', ':MoveHBlock(-1)<CR>')
vim.keymap.set('v', '<C-l>', ':MoveHBlock(1)<CR>')
-- go to the rigth in visual
vim.keymap.set("v", "H", "^")
-- go to the left in visual
vim.keymap.set("v", "L", "g_")


-- terminal mode keymaps
vim.keymap.set("t", "<A-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<A-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<A-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set("t", "<A-l>", "<C-\\><C-n><C-w>l")
vim.keymap.set("t", "<Esc>", "<c-\\><c-n><esc><cr>")
vim.keymap.set("t", "<Leader>,", "<c-\\><c-n>:bnext<cr>")
vim.keymap.set("t", "<Leader>.", "<c-\\><c-n>:bprevious<cr>")
