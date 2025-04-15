---@type vim.lsp.Config
return {
	cmd = { "rust-analyzer" },
	filetypes = { "rust" },
	single_file_support = true,
	capabilities = {
		experimental = {
			serverStatusNotification = true,
		},
	},
	before_init = function(init_params, config)
		-- See https://github.com/rust-lang/rust-analyzer/blob/eb5da56d839ae0a9e9f50774fa3eb78eb0964550/docs/dev/lsp-extensions.md?plain=1#L26
		if config.settings and config.settings["rust-analyzer"] then
			init_params.initializationOptions = config.settings["rust-analyzer"]
		end
	end,
	commands = {
		CargoReload = {
			function()
				reload_workspace(0)
			end,
			description = "Reload current cargo workspace",
		},
	},
	docs = {
		description = [[
https://github.com/rust-lang/rust-analyzer

rust-analyzer (aka rls 2.0), a language server for Rust


See [docs](https://rust-analyzer.github.io/book/configuration.html) for extra settings. The settings can be used like this:
```lua
require'lspconfig'.rust_analyzer.setup{
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false;
      }
    }
  }
}
```

Note: do not set `init_options` for this LS config, it will be automatically populated by the contents of settings["rust-analyzer"] per
https://github.com/rust-lang/rust-analyzer/blob/eb5da56d839ae0a9e9f50774fa3eb78eb0964550/docs/dev/lsp-extensions.md?plain=1#L26.
    ]],
	},
}
