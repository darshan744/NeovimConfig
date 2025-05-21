return {
  {
    "neovim/nvim-lspconfig",
    config = function()
			local lspconfig = require("lspconfig")
			
			-- Add your LSP setups below
			lspconfig.angularls.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.tailwindcss.setup({})
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

    end,
  }
}
