--NOTE(elsuizo: 2022-08-24): aca pongo las configuraciones para trabajar con
--bases de datos mas que nada el plugin vim-dadbod-ui

vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_show_database_icon = 1
vim.g.db_ui_force_echo_notifications = 1

vim.g.db_ui_table_helpers = {
    mysql = {
        Count = "select count(1) from {optional_schema}{table}",
        Explain = "EXPLAIN {last_query}"
    },
    sqlite = {
        Describe = "PRAGMA table_info({table})"
    },
    postgresql =  {
     Count =  'select count(*) from "{table}"'
   }
}

vim.g.db_ui_icons = {
    expanded = {
        db = '▾ ',
        buffers = '▾ ',
        saved_queries = '▾ ',
        schemas = '▾ ',
        schema = '▾ פּ',
        tables = '▾ 藺',
        table = '▾ ',
    },
    collapsed = {
        db = '▸ ',
        buffers = '▸ ',
        saved_queries = '▸ ',
        schemas = '▸ ',
        schema = '▸ פּ',
        tables = '▸ 藺',
        table = '▸ ',
    },
    saved_query = '',
    new_query = '璘',
    tables = '離',
    buffers = '﬘',
    add_connection = '',
    connection_ok = '✓',
    connection_error = '✕',
}

-- opening it in a new tab
vim.keymap.set('n', '<leader><leader>db', ':tab DBUI<cr>', {})

-- just close the tab, but context related of the keybinding
vim.keymap.set('n', '<leader><leader>tq', ':tabclose<cr>')
