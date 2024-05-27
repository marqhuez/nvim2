return {
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "tsserver" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities = capabilities,
				on_attach = function(client, _)
					client.server_capabilities.documentFormattingProvider = false
					client.server_capabilities.documentRangeFormattingProvider = false
				end,
			})
			lspconfig.eslint.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
			vim.keymap.set("n", "<C-p>", vim.lsp.buf.signature_help, { desc = "LSP signature help" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
			vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature Documentation" })
			vim.keymap.set("i", "<C-p>", vim.lsp.buf.signature_help, { desc = "LSP Signature Help" })
		end,
	},
}
