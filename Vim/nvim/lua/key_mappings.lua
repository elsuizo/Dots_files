local vim = vim
local api = vim.api
local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.mapBuf(buf, mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_buf_set_keymap(buf, mode, lhs, rhs, options)
end

-- statusline
-- require('lualine').setup{
-- options = {theme = 'ayu_dark'}
-- }

-- TODO(elsuizo): no se para que son estas
-- M.map("n", "Q", "<nop>")
-- M.map("n", "q", "<nop>")
-- M.map("n", "<Leader>f", "<cmd>Format<cr>")

-- telescope
M.map("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files()<cr>")
M.map("n", "<leader>g", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
M.map("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers()<cr>")
M.map("n", "<leader>h", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- save
M.map("n", "<Leader>w", ":w!<cr>")
-- kill the buffer
M.map("n", "<Leader>k", ":bd<cr>")
-- clean highlights
M.map("n", "<Leader><cr>", ":noh<cr>")
-- open the config
M.map("n", "<Leader>c", ":e! ~/.config/nvim/init.lua<cr>")
-- go to the rigth
M.map("n", "H", "^")
-- go to the left
M.map("n", "L", "g_")
-- go to the rigth in visual
M.map("v", "H", "^")
-- go to the left in visual
M.map("v", "L", "g_")
-- next buffer
M.map("n", "<space>,", "<cmd>bnext<cr>")
-- previous buffer
M.map("n", "<space>.", "<cmd>bprevious<cr>")
-- yank to the end of the line
M.map("n", "Y", "y$")
-- align blocks of text and keep them selected
M.map("v", "<", "<gv")
M.map("v", ">", ">gv")
-- update the packages
M.map("n", "<Leader>u", "<cmd>PackerUpdate<cr>")

-- TODO(elsuizo): no se para que es esto
-- M.map("n", "<Leader>d", '"_d')
-- M.map("v", "<Leader>d", '"_d')

-- open the NERDTree
M.map("n", "<C-\\>", ":NERDTreeToggle<CR>")

-- TODO(elsuizo): esto me parece que andan mal o no se para que se usa
M.map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
M.map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
M.map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
M.map("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")

M.map("i", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
M.map("i", "<C-k>", "<cmd>TmuxNavigateUp<cr>")
M.map("i", "<C-l>", "<cmd>TmuxNavigateRight<cr>")
M.map("i", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")

-- snippets
M.map("i", "<C-k>", "<cmd>lua return require'snippets'.expand_or_advance(1)<CR>")
M.map("i", "<C-j>", "<cmd>lua return require'snippets'.advance_snippet(-1)<CR>")

M.map("n", "<A-h>", "<C-w>h")
M.map("n", "<A-j>", "<C-w>j")
M.map("n", "<A-k>", "<C-w>k")
M.map("n", "<A-l>", "<C-w>l")

M.map("t", "<A-h>", "<C-\\><C-n><C-w>h")
M.map("t", "<A-j>", "<C-\\><C-n><C-w>j")
M.map("t", "<A-k>", "<C-\\><C-n><C-w>k")
M.map("t", "<A-l>", "<C-\\><C-n><C-w>l")
-- M.map("n", "<A-t>", ":FloatermNew<CR>")
-- M.map("n", "<A-t>", ":FloatermToggle<CR>")
-- M.map("t", "<A-t>", "<C-\\><C-n>:FloatermToggle<CR>")
-- M.map("n", "<F7>",  "<C-\\><C-n>:FloatermNew<CR>")
-- M.map("n", "<F8>",  ":FloatermPrev<CR>")

-- bufferline
M.map("n", "<leader>1",  ":BufferGoto 1<CR>")
M.map("n", "<leader>2",  ":BufferGoto 2<CR>")
M.map("n", "<leader>3",  ":BufferGoto 3<CR>")
M.map("n", "<leader>4",  ":BufferGoto 4<CR>")
M.map("n", "<leader>5",  ":BufferGoto 5<CR>")
M.map("n", "<leader>6",  ":BufferGoto 6<CR>")
M.map("n", "<leader>7",  ":BufferGoto 7<CR>")
M.map("n", "<leader>8",  ":BufferGoto 8<CR>")
M.map("n", "<leader>9",  ":BufferLast<CR>")



-- TODO(elsuizo): parece que esto no anda
-- M.map("s", "<expr><TAB>", "neosnippet#expandable_or_jumpable() ? \\<Plug>(neosnippet_expand_or_jump) : \\<TAB>")
-- M.map("i", "<C-k>", "<Plug>(neosnippet_expand_or_jump)")
-- M.map("s", "<C-k>", "<Plug>(neosnippet_expand_or_jump)")
-- M.map("x", "<C-k>", "<Plug>(neosnippet_expand_target)")

-- terminal mappings

M.map("t", "<Esc>", "<c-\\><c-n><esc><cr>")
M.map("t", "<Leader>,", "<c-\\><c-n>:bnext<cr>")
M.map("t", "<Leader>.", "<c-\\><c-n>:bprevious<cr>")
M.map("t", "<C-j>", "<c-\\><c-n>:TmuxNavigateDown<cr>")
M.map("t", "<C-k>", "<c-\\><c-n>:TmuxNavigateUp<cr>")
M.map("t", "<C-l>", "<c-\\><c-n>:TmuxNavigateRight<cr>")
M.map("t", "<C-h>", "<c-\\><c-n>:TmuxNavigateLeft<CR>")


-- TODO(elsuizo) ver para que es esto
-- for i = 1, 9 do
--   M.map("n", "<leader>" .. i, ':lua require"bufferline".go_to_buffer(' .. i .. ")<CR>")
--   M.map("t", "<leader>" .. i, '<C-\\><C-n>:lua require"bufferline".go_to_buffer(' .. i .. ")<CR>")
-- end

local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- local on_attach = function(client, bufnr)
--   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
--
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
--
--   -- Mappings.
--   local opts = { noremap=true, silent=true }
--
--   -- See `:help vim.lsp.*` for documentation on any of the below functions
--   buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--   buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--   buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
--   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--   buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--   buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--   buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--   buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--   buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--   buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
--   buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
--   buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--   buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--   buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
--
-- end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { "pyright", "tsserver" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
end

return M
