local opt = vim.opt
local g = vim.g

opt.completeopt = "menu,menuone,noselect"
opt.inccommand = "nosplit"
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.hidden = true
opt.relativenumber = true
opt.number = true
opt.termguicolors = true
opt.guifont = "Hack Nerd Font Mono:h12"
opt.splitbelow = true
opt.splitright = true

g.mapleader = " "

vim.cmd [[colorscheme tokyonight]]
