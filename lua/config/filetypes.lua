local function set_opts(opts)
  for k, v in pairs(opts) do
    vim.opt_local[k] = v
  end
end

local ft_settings = {
  lua = { tabstop = 2, shiftwidth = 2, softtabstop = 2, textwidth = 120, colorcolumn = "120", expandtab = true, smartindent = true },
  sh = { tabstop = 4, shiftwidth = 4, softtabstop = 4, expandtab = true, textwidth = 100, colorcolumn = "100", smartindent = true },
  go = { tabstop = 4, shiftwidth = 4, softtabstop = 0, expandtab = false, textwidth = 100, colorcolumn = "100" },
  c = { tabstop = 4, shiftwidth = 4, softtabstop = 4, expandtab = true, textwidth = 120, colorcolumn = "120", smartindent = true },
  markdown = { tabstop = 2, shiftwidth = 2, softtabstop = 2, textwidth = 80, colorcolumn = "80", expandtab = true, conceallevel = 0, spell = true, spelllang = "en_us" },
  json = { tabstop = 2, shiftwidth = 2, softtabstop = 2, expandtab = true, textwidth = 0, foldmethod = "syntax", foldenable = false },
  yaml = { tabstop = 2, shiftwidth = 2, softtabstop = 2, textwidth = 80, colorcolumn = "80", expandtab = true },
  toml = { tabstop = 2, shiftwidth = 2, softtabstop = 2, textwidth = 80, colorcolumn = "80", expandtab = true },
  html = { tabstop = 2, shiftwidth = 2, softtabstop = 2, textwidth = 100, colorcolumn = "100", expandtab = true, smartindent = true },
  css = { tabstop = 2, shiftwidth = 2, softtabstop = 2, textwidth = 100, colorcolumn = "100", expandtab = true, smartindent = true },
}

vim.api.nvim_create_autocmd("FileType", {
  pattern = vim.tbl_keys(ft_settings),
  callback = function(args)
    local settings = ft_settings[args.match]
    if settings then
      set_opts(settings)
    end

    if args.match == "html" then
      vim.opt_local.matchpairs:append("<:>")
    elseif args.match == "json" then
      local fname = vim.fn.expand("%:t")
      if fname == "tsconfig.json" or fname == "package.json" or fname:match("%.jsonc$") then
        vim.opt_local.commentstring = "// %s"
      end
    end
  end,
})
