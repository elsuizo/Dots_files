-- luasnippets config
local ls = require("luasnip")
local cmp = require("cmp")

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local l = require("luasnip.extras").lambda
local rep = require("luasnip.extras").rep
local p = require("luasnip.extras").partial
local m = require("luasnip.extras").match
local n = require("luasnip.extras").nonempty
local dl = require("luasnip.extras").dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local types = require("luasnip.util.types")
local conds = require("luasnip.extras.expand_conditions")

--NOTE(elsuizo: 2022-04-10): con esto lo loco es que pudimos incluir los
--snippets que teniamos de antes!!!
require("luasnip.loaders.from_snipmate").lazy_load()

ls.config.set_config({
   history = true,
   -- Update more often, :h events for more info.
   update_events = "TextChanged,TextChangedI",
   -- Snippets aren't automatically removed if their text is deleted.
   -- `delete_check_events` determines on which events (:h events) a check for
   -- deleted snippets is performed.
   -- This can be especially useful when `history` is enabled.
   delete_check_events = "TextChanged",
   ext_opts = {
      [types.choiceNode] = {
         active = {
            virt_text = { { "choiceNode", "Comment" } },
         },
      },
   },
   -- treesitter-hl has 100, use something higher (default is 200).
   ext_base_prio = 300,
   -- minimal increase in priority.
   ext_prio_increase = 1,
   enable_autosnippets = true,
   -- mapping for cutting selected text so it's usable as SELECT_DEDENT,
   -- SELECT_RAW or TM_SELECTED_TEXT (mapped via xmap).
   store_selection_keys = "<Tab>",
   -- luasnip uses this function to get the currently active filetype. This
   -- is the (rather uninteresting) default, but it's possible to use
   -- eg. treesitter for getting the current filetype by setting ft_func to
   -- require("luasnip.extras.filetype_functions").from_cursor (requires
   -- `nvim-treesitter/nvim-treesitter`). This allows correctly resolving
   -- the current filetype in eg. a markdown-code block or `vim.cmd()`.
   ft_func = function()
      return vim.split(vim.bo.filetype, ".", true)
   end,
})

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_next_item()
    elseif luasnip and luasnip.expand_or_jumpable() then
        return t("<Plug>luasnip-expand-or-jump")
    elseif check_back_space() then
        return t "<Tab>"
    else
        cmp.complete()
    end
    return ""
end
_G.s_tab_complete = function()
    if cmp and cmp.visible() then
        cmp.select_prev_item()
    elseif luasnip and luasnip.jumpable(-1) then
        return t("<Plug>luasnip-jump-prev")
    else
        return t "<S-Tab>"
    end
    return ""
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-next-choice", {})
vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-next-choice", {})


local date_input = function(args, state, fmt)
   local fmt = fmt or "%Y-%m-%d"
   return sn(nil, i(1, os.date(fmt)))
end

--TODO(elsuizo: 2022-04-10): probar las variantes locas que muestra tj en el
--video
-------------------------------------------------------------------------
--                           custom snippets
-------------------------------------------------------------------------
ls.add_snippets("lua", {
   s("req", fmt("local {} = require('{}')", {i(1, "default"), rep(1)})),
   s("TODO", fmt("--TODO(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "todo text here")})),
   s("NOTE", fmt("--NOTE(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "note text here")})),
   s("FIXME", fmt("--FIXME(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "fixme text here")})),
})

ls.add_snippets("rust", {
   s("TODO", fmt("// TODO(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "todo text here")})),
   s("NOTE", fmt("// NOTE(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "note text here")})),
   s("FIXME", fmt("// FIXME(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "fixme text here")})),
})

ls.add_snippets("zig", {
   s("TODO", fmt("// TODO(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "todo text here")})),
   s("NOTE", fmt("// NOTE(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "note text here")})),
   s("FIXME", fmt("// FIXME(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "fixme text here")})),
})

ls.add_snippets("javascript", {
   s("TODO", fmt("// TODO(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "todo text here")})),
   s("NOTE", fmt("// NOTE(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "note text here")})),
   s("FIXME", fmt("// FIXME(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "fixme text here")})),
})

ls.add_snippets("python", {
   s("TODO", fmt("# TODO(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "todo text here")})),
   s("NOTE", fmt("# NOTE(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "note text here")})),
   s("FIXME", fmt("# FIXME(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "fixme text here")})),
})

ls.add_snippets("julia", {
   s("TODO", fmt("# TODO(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "todo text here")})),
   s("NOTE", fmt("# NOTE(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "note text here")})),
   s("FIXME", fmt("# FIXME(elsuizo: {}): {}", {os.date("%Y-%m-%d"), i(1, "fixme text here")})),
})

ls.add_snippets("c", {
   s("TODO", fmt("/* TODO(elsuizo: {}): {} */", {os.date("%Y-%m-%d"), i(1, "todo text here")})),
   s("NOTE", fmt("/* NOTE(elsuizo: {}): {} */", {os.date("%Y-%m-%d"), i(1, "note text here")})),
   s("FIXME", fmt("/* FIXME(elsuizo: {}): {} */", {os.date("%Y-%m-%d"), i(1, "fixme text here")})),
})

ls.add_snippets("markdown", {
   s("TODO", fmt("<!-- TODO(elsuizo: {}): {} -->", {os.date("%Y-%m-%d"), i(1, "todo text here")})),
   s("NOTE", fmt("<!-- NOTE(elsuizo: {}): {} -->", {os.date("%Y-%m-%d"), i(1, "note text here")})),
   s("FIXME", fmt("<!-- FIXME(elsuizo: {}): {} -->", {os.date("%Y-%m-%d"), i(1, "fixme text here")})),
})

ls.add_snippets("all", {
   s("date", fmt("{}", {os.date("%Y-%m-%d")})),
})
