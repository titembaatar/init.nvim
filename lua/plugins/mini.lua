return {
	{
		'nvim-mini/mini.nvim',
		version = '*',
		config = function()
			-- text
			require("mini.ai").setup({})
			require("mini.align").setup({})
			require("mini.pairs").setup({})
			require("mini.splitjoin").setup({})
			require("mini.surround").setup({})
			-- general
			require("mini.bracketed").setup({})
			require("mini.files").setup({})
			require("mini.diff").setup({ view = { style = "sign" } })
			-- ui
			require("mini.cursorword").setup({})
			require("mini.icons").setup({})
			require("mini.statusline").setup({ use_icons = true, })
			require("mini.tabline").setup({})
			require("mini.indentscope").setup({
				draw = { animation = function() return 0 end, },
				symbol = "│",
			})
			require("mini.hipatterns").setup({
				highlighters = {
					todo       = {pattern = "%f[%w]()TODO()%f[%W]",       group = "MiniHipatternsTodo"},
					note       = {pattern = "%f[%w]()NOTE()%f[%W]",       group = "MiniHipatternsNote"},
					fixme      = {pattern = "%f[%w]()FIXME()%f[%W]",      group = "MiniHipatternsFixme"},
					hack       = {pattern = "%f[%w]()HACK()%f[%W]",       group = "MiniHipatternsHack"},
					deprecated = {pattern = "%f[%w]()DEPRECATED()%f[%W]", group = "MiniHipatternsDeprecated"},
				},
			})
		end
	},
	{
		'nvim-mini/mini.trailspace',
		event = 'BufReadPost',
		opts = {},
	},

	vim.keymap.set("n", "<leader>e",  "<Cmd>lua MiniFiles.open()<CR>",          { desc = "Mini File Explorer" }),
	vim.keymap.set("n", "<leader>go", "<Cmd>lua MiniDiff.toggle_overlay()<CR>", { desc = "Toggle MiniDiff" })
}
