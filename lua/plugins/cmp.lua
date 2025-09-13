return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"onsails/lspkind.nvim", -- for icons (optional)
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require("lspkind")

		cmp.setup({
			window = {
				completion = cmp.config.window.bordered({
					border = "rounded", -- rounded borders
					winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:None",
				}),
				documentation = cmp.config.window.bordered({
					border = "rounded",
				}),
			},
			performance = {
				debounce = 60,
				throttle = 30,
				fetching_timeout = 500,
			},

			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				["<Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					elseif luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),

				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),

			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			}),
			formatting = {
				format = lspkind.cmp_format({
					mode = "symbol_text", -- show icon + text
					maxwidth = 50, -- max width of popup
					ellipsis_char = "...",
					symbol_map = {
						Text = "📝", -- Simple emoji for text
						Method = "ƒ", -- Function-like letter f, looks neat
						Function = "", -- Nerd font glyph (default func icon)
						Constructor = "", -- Classic constructor glyph
						Field = "", -- Folder with paper icon
						Variable = "", -- Variable icon from Nerd Fonts
						Class = "", -- Class symbol
						Interface = "ﰮ", -- Interface icon
						Module = "", -- Module glyph
						Property = "", -- Property glyph
						Unit = "", -- Unit glyph
						Value = "", -- Value glyph
						Enum = "", -- Enum glyph
						Keyword = "", -- Keyword glyph
						Snippet = "", -- Snippet / magic wand
						Color = "", -- Color swatch
						File = "📄", -- Plain emoji file icon
						Reference = "", -- Reference icon
						Folder = "📁", -- Plain emoji folder icon
						EnumMember = "", -- Enum member glyph
						Constant = "", -- Constant glyph
						Struct = "", -- Struct glyph
						Event = "", -- Event glyph (lightning bolt)
						Operator = "", -- Operator glyph
						TypeParameter = "𝙏",
					},
				}),
			},
		})
	end,
}
