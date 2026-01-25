vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local k = vim.keymap

k.set("n", "x",          '"_x',              { desc = "Delete character without copying" })

k.set("v", "<",          "<gv",              { desc = "Decrease indent and reselect" })
k.set("v", ">",          ">gv",              { desc = "Increase indent and reselect" })

k.set("v", "J",          ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
k.set("v", "K",          ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

k.set("n", "<C-d>",      "<C-d>zz",          { desc = "Scroll down and center" })
k.set("n", "<C-u>",      "<C-u>zz",          { desc = "Scroll up and center" })
k.set("n", "n",          "nzzzv",            { desc = "Next search result and center" })
k.set("n", "N",          "Nzzzv",            { desc = "Previous search result and center" })

k.set("n", "H",          ":bprevious<CR>",   { noremap = true, silent = true, desc = "Previous buffer" })
k.set("n", "L",          ":bnext<CR>",       { noremap = true, silent = true, desc = "Next buffer" })
k.set("n", "K",          vim.lsp.buf.hover,  { desc = "Hover Documentation" })

k.set("n", "<leader>/",  ":nohl<CR>",        { desc = "Clear search highlights" })
k.set("n", "<leader>f",  "gg=G",             { desc = "Format" })
k.set("n", "<leader>ci", "<Cmd>Inspect<CR>", { desc = "Inspect highlights" })

