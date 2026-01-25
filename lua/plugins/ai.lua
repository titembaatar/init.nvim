return {
	{
		"NickvanDyke/opencode.nvim",
		dependencies = {
			{ "folke/snacks.nvim", opts = {
					input = {},
					picker = {},
					terminal = {}
				}
			},
		},
		config = function()
			vim.g.opencode_opts = { provider = { enabled = "snacks", }, }

			vim.o.autoread = true

			vim.keymap.set({ "n", "x" }, "<leader>aa",
				function() require("opencode").ask("@this: ", { submit = true }) end,
				{ desc = "Ask opencode" }
			)
			vim.keymap.set({ "n", "x" }, "<leader>ar",
				function() require("opencode").prompt("Review @buffer", { submit = true }) end,
				{ desc = "Review current buffer" }
			)
			vim.keymap.set({ "n", "t" }, "<leader>at",
				function() require("opencode").toggle() end,
				{ desc = "Toggle opencode" }
			)

			vim.keymap.set("n", "<S-C-u>",
				function() require("opencode").command("session.half.page.up") end,
				{ desc = "opencode half page up" }
			)
			vim.keymap.set("n", "<S-C-d>",
				function() require("opencode").command("session.half.page.down") end,
				{ desc = "opencode half page down" }
			)

			vim.keymap.set("n", "+", "<C-a>", { desc = "Increment", noremap = true })
			vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement", noremap = true })
		end,
	}
}
