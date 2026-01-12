-- General Neovim settings and options
local opt = vim.opt

-- General
opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20,o:hor50"
opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.textwidth = 100
opt.colorcolumn = "100"
opt.wrap = false
opt.cursorline = false
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch", -- You can use different highlight groups: Visual, Search, etc.
      timeout = 200,         -- Time in milliseconds the highlight remains
      on_macro = true,       -- Also highlight when running a macro
      on_visual = true       -- Also highlight when yanking a visual selection
    })
  end,
  group = highlight_group,
})

-- Diagnostic
vim.diagnostic.enable = true
vim.diagnostic.config({
  virtual_text = true,
})

-- Disable mini.trailspace in snacks.dashboard
local disableTrailspace = function(args) vim.b[args.buf].minitrailspace_disable = true end
vim.api.nvim_create_autocmd('User', { pattern = 'SnacksDashboardOpened', callback = disableTrailspace })

-- Disable mini.sessions, conflict with snacks.picker projects
vim.g.minisessions_disable = true
