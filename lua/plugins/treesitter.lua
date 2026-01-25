return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
			local ts = require("nvim-treesitter")
			ts.install({
				"c", "go", "lua",
				"bash", "zsh",
				"json", "yaml", "toml",
				"desktop", "dockerfile",
				"sway", "tmux",
				"html", "css", "gotmpl",
			})
			vim.api.nvim_create_autocmd('FileType', {
				callback = function(args)
					local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
					if lang and vim.treesitter.query.get(lang, "highlights") then
						vim.treesitter.start(args.buf)
					end
				end,
			})
		end,
	}
}
