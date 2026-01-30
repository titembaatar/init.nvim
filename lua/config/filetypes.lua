local lang = {
	go = {
		tabstop = 4,
		shiftwidth = 4,
	},
	lua = {
		tabstop = 2,
		shiftwidth = 2,
		textwidth = 120,
		colorcolumn = "121",
	},
	css = {
		tabstop = 2,
		shiftwidth = 2,
		softtabstop = 2,
		expandtab = true,
		textwidth = 100,
		colorcolumn = "101",
	},
	markdown = {
		tabstop = 2,
		shiftwidth = 2,
		softtabstop = 2,
		expandtab = true,
		conceallevel = 0,
		spell = true,
		spelllang = "en_us"
	},
	yaml = {
		tabstop = 2,
		shiftwidth = 2,
		softtabstop = 2,
		expandtab = true,
	},
	toml = {
		tabstop = 2,
		shiftwidth = 2,
		softtabstop = 2,
		expandtab = true,
	},
	json = {
		tabstop = 2,
		shiftwidth = 2,
		softtabstop = 2,
		expandtab = true,
		textwidth = 0,
	},
}

local function set_opts(o)
	for k, v in pairs(o) do
		vim.opt_local[k] = v
	end
end

vim.api.nvim_create_autocmd("FileType", {
	pattern = vim.tbl_keys(lang),
	callback = function(args)
		if lang[args.match] then
			set_opts(lang[args.match])
		end
	end,
})
