vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4

vim.opt.shiftwidth = 4
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.treesitter.foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldtext = "v:lua.treesitter.foldtext()"
