return {
	{
		"folke/trouble.nvim",
		cmd = { "Trouble" },
		opts = {
			auto_close = true,
			win = {position = "right", size = 0.3,},
			preview = {
				type = "split",
				relative = "win",
				position = "bottom",
				size = 0.5,
			},
		},
		keys = {
			{"<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)",},
			{"<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)",},
			{"<leader>xl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)",},
			{"<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)",},
			{"<leader>xq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)",},
		},
	},
}
