
-- btw the window keybinds are in telescope.after
require("plugins")

local opt = vim.opt

vim.g.mapleader = " "

opt.mouse = "a"
opt.number = true
opt.wrap = false
opt.tabstop = 4
opt.shiftwidth = 4

vim.cmd('colorscheme gruvbox')
vim.g.airline_theme = "base16_gruvbox_dark_medium"

vim.keymap.set('t', '<C-w>', "<C-\\><C-n><C-w>h",{silent = true})

