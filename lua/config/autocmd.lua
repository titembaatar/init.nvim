vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight on yank",
	group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
	pattern = "*",
})

vim.api.nvim_create_autocmd("BufWritePre", {
	desc = "Make scripts executable on write if they are not",
	group = vim.api.nvim_create_augroup("MakeFileExecutable", { clear = true }),
	callback = function()
		local shebang = vim.api.nvim_buf_get_lines(0, 0, 1, true)[1]
		if not shebang or not shebang:match("^#!.+") then
			return
		end

		vim.api.nvim_create_autocmd("BufWritePost", {
			once = true,
			callback = function(args)
				local name = vim.api.nvim_buf_get_name(args.buf)
				local info = vim.uv.fs_stat(name)
				if not info or bit.band(info.mode - 32768, 0x40) ~= 0 then
					return
				end
				vim.uv.fs_chmod(name, bit.bor(info.mode, 493))
			end,
		})
	end,
})

