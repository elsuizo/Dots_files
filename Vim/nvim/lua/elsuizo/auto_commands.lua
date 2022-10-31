local M = {}
function M.autocmd(event, triggers, operations)
  local cmd = string.format("autocmd %s %s %s", event, triggers, operations)
 vim.cmd(cmd)
end

M.autocmd("BufEnter",     "*",   "if &buftype == 'terminal' | :startinsert | endif")
M.autocmd("BufReadPost",  "*",   [[if line("'\"") > 0 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif]])
M.autocmd("BufWritePre",  "*",   "%s/\\s\\+$//e")
M.autocmd("BufRead",      "*",   "normal zz")

M.autocmd("FileType", "rust", "nmap <leader>D <Plug>(rust-doc)")
M.autocmd("FileType", "rust", "nmap <leader>R :Cargo run --release<cr>")
M.autocmd("FileType", "rust", "nmap <leader>r :Cargo run <cr>")
M.autocmd("FileType", "rust", "nmap <leader>T :make test<cr>")
M.autocmd("FileType", "rust", "nmap <leader>t :Cargo check<cr>")
M.autocmd("FileType", "rust", "nmap <leader>B :make build --release<cr>") -- build in release mode inside nvim this put all the errors in the quickfixlist
M.autocmd("FileType", "rust", "nmap <leader>b :make c<cr>")               -- check inside nvim this put all the errors in the quickfixlist
M.autocmd("FileType", "rust", "nmap <C-]> :cnext<cr>")
M.autocmd("FileType", "rust", "nmap <C-[> :cprevious<cr>")
M.autocmd("FileType", "rust", "nmap <leader><leader>f :!cargo +nightly fmt<cr>")
--TODO(elsuizo: 2022-07-08): quiero que me muestre los errores primero y no los
--warnings!!!
M.autocmd("FileType", "rust", "nmap <leader>E <cmd>lua require('telescope.builtin').diagnostics()<cr>") -- show the errors in the telescope window

M.autocmd("TermOpen", "*",   "setl bufhidden=hide")
M.autocmd("TermOpen", "*",   "startinsert")
M.autocmd("TermOpen", "*",   "setl nonumber")

return M
