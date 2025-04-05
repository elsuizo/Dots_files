vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
	callback = function(event)
		local map = function(keys, func, desc)
			vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end
		-- lsp mappings

		map("gD", function()
			vim.lsp.buf.declaration()
		end, "Go To declaration")
		map("gd", function()
			vim.lsp.buf.definition()
		end, "Go To definition")
		-- NOTE(elsuizo:2021-06-29): esto estaba en `gi` pero a veces es util porque gi va al ultimo lugar que estuvimos en insert-mode
		map("g;", function()
			vim.lsp.buf.implementation()
		end, "Go To implementation")
		map("<C-h>", function()
			vim.lsp.buf.signature_help()
		end, "Help signature function")
		map("<space>wa", function()
			vim.lsp.buf.add_workspace_folder()
		end, "Add worspace folder")
		map("<space>wr", function()
			vim.lsp.buf.remove_workspace_folder()
		end, "remove workspace folder")
		map("<space>wl", function()
			print(vim.inspect(corner.objp.buf.list_workspace_folders()))
		end, "List of workspace folders")
		map("<space>D", function()
			vim.lsp.buf.type_definition()
		end, "Type definition")
		map("<space>rn", function()
			vim.lsp.buf.rename()
		end, "Rename")
		map("<space>ca", function()
			vim.lsp.buf.code_action()
		end, "Code Action")
		map("gr", function()
			vim.lsp.buf.references()
		end, "Get References")
		map("<space>e", function()
			vim.lsp.diagnostic.show_line_diagnostics()
		end, "Show diagnostics")
		map("[d", function()
			vim.lsp.diagnostic.goto_prev()
		end, "Diagnostic go to previous")
		map("]d", function()
			vim.lsp.diagnostic.goto_next()
		end, "Diagnostic go to next")
		map("<space>q", function()
			vim.lsp.diagnostic.set_loclist()
		end, "Diagnostic set local list")
		map("K", function()
			vim.lsp.buf.hover({ border = "rounded" })
		end, "Hover Documentation")

		-- When you move your cursor, the highlights will be cleared (the second autocommand).
		local client = vim.lsp.get_client_by_id(event.data.client_id)
		-- NOTE(elsuizo): esto es importante para que el lsp no se meta con los
		-- colores de mi colorscheme custom
		client.server_capabilities.semanticTokensProvider = nil
		if client and client.server_capabilities.documentHighlightProvider then
			local highlight_augroup = vim.api.nvim_create_augroup("kickstart-lsp-highlight", { clear = false })
			vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
				buffer = event.buf,
				group = highlight_augroup,
				callback = vim.lsp.buf.document_highlight,
			})

			vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
				buffer = event.buf,
				group = highlight_augroup,
				callback = vim.lsp.buf.clear_references,
			})

			vim.api.nvim_create_autocmd("LspDetach", {
				group = vim.api.nvim_create_augroup("kickstart-lsp-detach", { clear = true }),
				callback = function(event2)
					vim.lsp.buf.clear_references()
					vim.api.nvim_clear_autocmds({ group = "kickstart-lsp-highlight", buffer = event2.buf })
				end,
			})
		end

		-- The following autocommand is used to enable inlay hints in your
		-- code, if the language server you are using supports them
		--
		-- This may be unwanted, since they displace some of your code
		if client and client.server_capabilities.inlayHintProvider and vim.lsp.inlay_hint then
			map("<leader>th", function()
				vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
			end, "[T]oggle Inlay [H]ints")
		end
	end,
})

vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})

-- list of lsp servers enables
vim.lsp.enable("lua_ls")
vim.lsp.enable("rust_analyzer")
