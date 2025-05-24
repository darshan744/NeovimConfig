
vim.g.mapleader = " " 
vim.keymap.set("n" , "<C-b>" , ":NvimTreeToggle<CR>")
vim.keymap.set("n" , "gd"  , "<cmd>Telescope lsp_definitions<CR>")
--vim.keymap.set("n" , "gd" , vim.lsp.buf.definitions , {noremap = true , silent=true , buffer = bufnr)

