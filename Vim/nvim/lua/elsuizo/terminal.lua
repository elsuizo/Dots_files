require'FTerm'.setup({
    border = 'single',
    dimensions  = {
        height = 0.7,
        width = 0.7,
    },
   blend = 23,
})

-- Example keybindings
vim.keymap.set('n', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
