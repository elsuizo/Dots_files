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

-- Trouble setup
vim.api.nvim_set_keymap("n", "<leader>xx", "<cmd>Trouble<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xd", "<cmd>Trouble document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "<leader>qf", "<cmd>Trouble quickfix<cr>",
  {silent = true, noremap = true}
)
vim.api.nvim_set_keymap("n", "gR", "<cmd>Trouble lsp_references<cr>",
  {silent = true, noremap = true}
)

-- telescope
-- loading the extensions
require('telescope').load_extension('fzy_native')
require('telescope').load_extension('repo')

M.map("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files()<cr>")
M.map("n", "<leader>g", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
M.map("n", "<leader>B", "<cmd>lua require('telescope.builtin').buffers()<cr>")
M.map("n", "<leader>h", "<cmd>lua require('telescope.builtin').help_tags()<cr>")
M.map("n", "<leader>s", "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>")
M.map("n", "<leader><leader>t", ":Telescope<cr>")

-- toggle visibility of the fucking tabs
M.map("n", "<Leader><leader>T", ":set invlist<cr>")
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
-- align blocks of text and keep them selected
M.map('v', '<', '<gv', { noremap = true, silent = true })
M.map('v', '>', '>gv', { noremap = true, silent = true })
-- update the packages
M.map("n", "<Leader>u", "<cmd>PackerUpdate<cr>")
-- open the quickfixlist
M.map("n", "<Leader>o", ":copen<cr>")
-- disable the fucking arrows keys
M.map('n', '<Up>', '<Nop>', { noremap = true, silent = true })
M.map('n', '<Down>', '<Nop>', { noremap = true, silent = true })
M.map('n', '<Left>', '<Nop>', { noremap = true, silent = true })
M.map('n', '<Right>', '<Nop>', { noremap = true, silent = true })
M.map('i', '<Up>', '<Nop>', { noremap = true, silent = true })
M.map('i', '<Down>', '<Nop>', { noremap = true, silent = true })
M.map('i', '<Left>', '<Nop>', { noremap = true, silent = true })
M.map('i', '<Right>', '<Nop>', { noremap = true, silent = true })
-- open the NERDTree
M.map("n", "<C-\\>", ":NERDTreeToggle<CR>")

M.map("n", "<A-h>", "<C-w>h")
M.map("n", "<A-j>", "<C-w>j")
M.map("n", "<A-k>", "<C-w>k")
M.map("n", "<A-l>", "<C-w>l")

M.map("t", "<A-h>", "<C-\\><C-n><C-w>h")
M.map("t", "<A-j>", "<C-\\><C-n><C-w>j")
M.map("t", "<A-k>", "<C-\\><C-n><C-w>k")
M.map("t", "<A-l>", "<C-\\><C-n><C-w>l")

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

-- terminal mappings
M.map("t", "<Esc>", "<c-\\><c-n><esc><cr>")
M.map("t", "<Leader>,", "<c-\\><c-n>:bnext<cr>")
M.map("t", "<Leader>.", "<c-\\><c-n>:bprevious<cr>")

-- TODO(elsuizo:2021-06-29): de aca en adelante no se si tendria que estar aca porque no son en realidad mappings
-- lspconfig
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  -- NOTE(elsuizo:2021-06-29): esto estaba en `gi` pero a veces es util porque gi va al ultimo lugar que estuvimos en insert-mode
  buf_set_keymap('n', 'g;', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-h>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

vim.lsp.handlers["textDocument/publishDiagnostics"] =
  vim.lsp.with(
     vim.lsp.diagnostic.on_publish_diagnostics,
     {
       underline = false,
       virtual_text = true,
       update_in_insert = true,
       signs = true,
     }
)

-- TODO(elsuizo:2022-02-17): no se porque a esto lo tengo que poner aca para que
-- funcione...
-- NOTE(elsuizo:2021-12-05): esto lo que cambia es el color de la ventana que aparece cuando accedes a los docs por ejemplo de Rust
vim.cmd [[autocmd ColorScheme * highlight NormalFloat guibg=#121212]]
vim.cmd [[autocmd ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

-- con rust_analyzer
-- local servers = { "rust_analyzer"}
local servers = { "pyright", "tsserver", "clangd", "rust_analyzer", "julials"}
-- sin rust_analyzer
-- local servers = { "pyright", "tsserver", "clangd", "julials"}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
     on_attach = on_attach,
  }
end

return M
