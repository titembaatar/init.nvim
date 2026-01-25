return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"clangd", "lua_ls", "gopls",
				"bashls",
				"docker_compose_language_service", "marksman",
				"jsonls", "yamlls", "taplo",
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},

		vim.keymap.set("n", "<leader>m", "<Cmd>Mason<CR>", { desc = "Mason" })
	},

	{
		'saghen/blink.cmp',
		opts = {
			completion = { documentation = { auto_show = false } },
			sources = {
				default = { 'lsp', 'path', 'buffer' },
			},
			fuzzy = { implementation = "lua" }
		},
	}
}
