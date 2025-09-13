vim.api.nvim_create_autocmd("VimEnter", {
	callback = function(data)
		-- buffer is a directory
		if vim.fn.isdirectory(data.file) == 1 then
			require("neo-tree")
			vim.cmd.cd(data.file)
			require("neo-tree.command").execute({ toggle = true, dir = data.file })
		end
	end,
})

vim.wo.number = true
vim.o.relativenumber = true
vim.o.clipboard = "unnamedplus"
vim.o.wrap = false
vim.o.linebreak = true
vim.o.autoindent = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
