require("config.options")
require("config.keymaps")
require("config.autocmd")
require("config.filetypes")
require("config.lsp")
require("config.lazy")

vim.diagnostic.enable = true
vim.diagnostic.config({ virtual_text = true, })

vim.cmd.colorscheme("sarnai")
