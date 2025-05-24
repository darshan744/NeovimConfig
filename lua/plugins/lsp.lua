return {
  {
    "neovim/nvim-lspconfig",
    config = function()
			local lspconfig = require("lspconfig")
			local caps = require("cmp_nvim_lsp").default_capabilities()
			-- Add your LSP setups below
			lspconfig.angularls.setup({
				capabilities = caps
			})
			lspconfig.ts_ls.setup({
				capabilities = caps
			})
			lspconfig.tailwindcss.setup({
				capabilities = caps
			})
			lspconfig.lua_ls.setup({
				capabilities = caps,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			lspconfig.dockerls.setup({
			capabilities = caps
			})
			lspconfig.yamlls.setup({
				capabilities = caps,
				yaml = {
					schemas = {
						["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose.yml",
					},
				}
			})
    end,
  }
}
