return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			dashboard = {
				enabled = true,
				preset = {
					keys = {
						{
							icon = "󰈞 ",
							key = "e",
							desc = "file explorer",
							action = ":lua MiniFiles.open()"
						},
						{
							icon = "󰭎 ",
							key = "f",
							desc = "find file",
							action = ":lua Snacks.dashboard.pick('files')"
						},
						{
							icon = "󰊢 ",
							key = "g",
							desc = "lazygit",
							action = ":lua Snacks.lazygit.open()"
						},
						{
							icon = "󰒲 ",
							key = "l",
							desc = "lazy",
							action = ":Lazy",
							enabled = package.loaded.lazy ~= nil
						},
						{
							icon = "󰙱 ",
							key = "m",
							desc = "mason",
							action = ":Mason",
						},
						{
							icon = "󰈆 ",
							key = "q",
							desc = "quit",
							action = ":qa"
						},
					},
				},
				sections = {
					{
						section = "terminal",
						cmd = "chafa ~/.dotfiles/assets/makoto-stance.gif -f symbols --symbols vhalf -s 32x16 --align center",
						height = 14,
						padding = 1,
					},
					{ section = "keys",   gap = 1, padding = 1 },
					{ section = "startup" },
				},
			},
		},
		keys = {
			{ "<leader><Esc>", function() Snacks.dashboard() end, desc = "Dashboard" },
		},
	}
}
