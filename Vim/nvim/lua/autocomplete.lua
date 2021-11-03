-- NOTE(elsuizo:2021-11-01): cosas del nuevo engine de autocomplete
vim.opt.completeopt = { "menu", "menuone", "noselect" }
local cmp = require'cmp'
cmp.setup({
   snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
         vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
         -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
         -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
         -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
   },
   mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm {
         behavior = cmp.ConfirmBehavior.Replace,
         select = true,
      },
      ['<Tab>'] = function(fallback)
         if cmp.visible() then
            cmp.select_next_item()
         elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
         else
            fallback()
         end
      end,
      ['<S-Tab>'] = function(fallback)
         if cmp.visible() then
            cmp.select_prev_item()
         elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
         else
            fallback()
         end
      end,
   },
   experimental = {
      ghost_text = true, -- TODO(elsuizo:2021-11-02): esto parece que solo anda cuando no ponemos keyword_length
   },
   documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
   },
   -- NOTE(elsuizo:2021-11-02): el orden de los sources importa, a los que mira
   -- primero son los que estan primeros en la lista
   sources = cmp.config.sources({
      { name = "buffer"}, -- TODO(elsuizo:2021-11-02): no se porque pero esto no anda me parece
      { name = 'nvim_lsp' },
      { name = "nvim_lua" },
      { name = 'nvim' },
      { name = "path" },
      -- { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
   }, {
      { name = 'buffer'},
   })
})

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
   sources = {
      { name = 'buffer' }
   }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
   sources = cmp.config.sources({
      { name = 'path' }
   }, {
      { name = 'cmdline' }
   })
})

-- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- require('cmp_nvim_lsp')['vimls'].setup {
--   capabilities = capabilities
-- }
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

-- TODO(elsuizo:2021-11-02): no me convence despues lo pruebo bien...
-- local lspkind = require('lspkind')
-- cmp.setup {
--   formatting = {
--     format = lspkind.cmp_format({with_text = false, maxwidth = 50})
--   }
-- }
