-- NOTE(elsuizo:2021-11-01): cosas del nuevo engine de autocomplete
vim.opt.completeopt = { "menu", "menuone", "noselect" }

local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
   return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
   return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
   local col = vim.fn.col "." - 1
   return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

local kind_icons = {
   Text = "",
   Method = "m",
   Function = "󰊕",
   Constructor = "",
   Field = "",
   Variable = "󰫧",
   Class = "",
   Interface = "",
   Module = "",
   Property = "",
   Unit = "",
   Value = "",
   Enum = "",
   Keyword = "",
   Snippet = "",
   Color = "󰏘",
   File = "",
   Reference = "",
   Folder = "",
   EnumMember = "",
   Constant = "󰏿",
   Struct = "",
   Event = "",
   Operator = "",
   TypeParameter = "",
}

local has_words_before = function()
   unpack = unpack or table.unpack
   local line, col = unpack(vim.api.nvim_win_get_cursor(0))
   return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup {
   snippet = {
      expand = function(args)
         luasnip.lsp_expand(args.body)
      end,
   },
   mapping = {
      ["<C-k>"] = cmp.mapping.select_prev_item(),
      ["<C-j>"] = cmp.mapping.select_next_item(),
      ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
      ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
      ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
      ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ["<C-e>"] = cmp.mapping {
         i = cmp.mapping.abort(),
         c = cmp.mapping.close(),
      },
      -- Accept currently selected item. If none selected, `select` first item.
      -- Set `select` to `false` to only confirm explicitly selected items.
      ["<CR>"] = cmp.mapping.confirm { select = true },
      ["<Tab>"] = cmp.mapping(function(fallback)
         if cmp.visible() then
            cmp.select_next_item()
            -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
            -- they way you will only jump inside the snippet region
         elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
         elseif has_words_before() then
            cmp.complete()
         else
            fallback()
         end
      end, { "i", "s" }),

      ["<S-Tab>"] = cmp.mapping(function(fallback)
         if cmp.visible() then
            cmp.select_prev_item()
         elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
         else
            fallback()
         end
      end, { "i", "s" }),
   },
   formatting = {
      fields = { "kind", "abbr", "menu" },
      format = function(entry, vim_item)
         -- Kind icons
         vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
         vim_item.menu = ({
            nvim_lsp = "[LSP]",
            luasnip = "[Snippet]",
            buffer = "[Buffer]",
            path = "[Path]",
         })[entry.source.name]
         return vim_item
      end,
   },
   sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "path" },
      { name = "buffer" },
      { name = "nvim_lsp_signature_help" },
      { name = "zsh" },
   },
   confirm_opts = {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
   },
}
