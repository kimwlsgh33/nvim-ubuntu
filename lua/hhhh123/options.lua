-- vim
-- set == vim.opt
vim.g.mapleader = ' '
vim.g.maplocalleader = ','

-- shiftwidth
vim.opt.sw = 2 -- appearance
-- shiftround (multiple of shiftwidth)
vim.opt.sr = true

-- tabstop
vim.opt.ts = 2 -- a number of tab length
-- expandtab
vim.opt.et = true

-- number
vim.opt.nu = true
-- relativenumber
vim.opt.rnu = true

-- showcmd
vim.opt.sc = true

-- cursorline
vim.opt.cul = true

-- laststatus
-- vim.opt.ls = 2

-- autowrite
-- vim.opt.aw = true

-- autoread
-- vim.opt.ar = true

-- fold
-- vim.opt.foldcolumn = '1'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- neovim
-- termguicolors
vim.opt.tgc = true
vim.api.nvim_set_option('clipboard', 'unnamed')

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- foldenable
vim.opt.fen = false
