return {
      'stevearc/conform.nvim', -- formatting plugin
      opts = {
         formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            python = { "isort", "black" },
            -- Use a sub-list to run only the first available formatter
            javascript = { { "prettierd", "prettier" } },
            c = { { "clang_format" } },
            ocaml = { { "ocamlformat" } }
         },
         format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_fallback = true,
         },
      },
}
