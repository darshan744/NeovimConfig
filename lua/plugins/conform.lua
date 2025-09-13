return {
	{
		"stevearc/conform.nvim",
		config = function()
			local conform = require("conform")

			-- Setup conform with some common formatters
			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					json = { "prettier" },
					-- add more filetypes & formatters here
				},
			})

			-- Format on save autocmd
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = vim.api.nvim_create_augroup("ConformFormat", { clear = true }),
				pattern = "*",

				callback = function()
					-- Async formatting
					conform.format({ async = false })
				end,
			})
		end,
	},
}
