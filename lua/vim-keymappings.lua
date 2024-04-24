local opt = vim.opt
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.winbar = "%=%m %f"
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.clipboard = "unnamedplus"

-- Vim UFO code Fold
opt.foldcolumn = '1' -- '0' is not bad
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true


vim.g.mapleader = " "

local options = { noremap = true, silent = true }
local keymap = vim.keymap.set


-- comment or uncomment the code 
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {noremap=false})
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", {noremap=false})
