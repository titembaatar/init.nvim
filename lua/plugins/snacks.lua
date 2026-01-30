return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			bufdelete = { enabled = true, },
			lazygit = { enabled = true, },
			notifier = { enabled = true },
			notify = { enabled = true },
			terminal = { enabled = true },
			words = { enabled = true },
			picker = {
				prompt = "; ",
				layout = {
					preset = "ivy",
					layout = { position = "bottom", height = 0.7, }
				},
				sources = {
					explorer = { hidden = true, },
					files = { hidden = true, },
					grep = { hidden = true, },
				},
			},
		},
		keys = {
			-- bufdelete
			{"<leader>bd", function() Snacks.bufdelete() end, desc = "Delete current buffer", },
			{"<leader>ba", function() Snacks.bufdelete.other() end, desc = "Delete all but current buffer", },
			-- lazygit
			{"<leader>lg", function() Snacks.lazygit.open() end, desc = "Open Lazygit", },
			-- notifier
			{ "<leader>n", function() Snacks.notifier.show_history() end, desc = "Notification History" },
			-- terminal
			{ "<leader>t", function() Snacks.terminal.open() end, desc = "Terminal" },
			-- words
			{ "<leader>j", function() Snacks.words.jump() end, desc = "Terminal" },
			-- picker
			{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
			{ "<leader>fd", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
			{ "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
			{ "<leader>fh", function() Snacks.picker.highlights() end, desc = "Highlights" },
			{ "<leader>fn", function() Snacks.picker.notifications() end, desc = "Notification History" },
			{ "<leader>fv", function() Snacks.picker.grep_word() end, desc = "Visual selection or word", mode = { "n", "x" } },
			{ "<leader>sd", function() Snacks.picker.diagnostics() end, desc = "Diagnostics" },
			{ "<leader>sh", function() Snacks.picker.help() end, desc = "Help Pages" },
			{ "<leader>sk", function() Snacks.picker.keymaps() end, desc = "Keymaps" },
			{ "<leader>sm", function() Snacks.picker.man() end, desc = "Man Pages" },
			{ "<leader>sq", function() Snacks.picker.qflist() end, desc = "Quickfix List" },
			{ "<leader>ss", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
			{ "gd", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
			{ "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
			{ "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
			{ "gr", function() Snacks.picker.lsp_references() end, { nowait = true, desc = "References" } },
			{ "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },

		},
	}
}
