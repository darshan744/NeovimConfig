return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
	cmd = "Neotree",
	keys = {
		{ "<leader>e" , "<cmd> Neotree toggle <CR>" , desc = "Toggle Neo-tree" } ,
        { "<leader>o" , 
        	function()
            if vim.bo.filetype == "neo-tree" then
              vim.cmd.wincmd "p"
            else
              vim.cmd.Neotree "focus"
            end
          end,
          desc = "Toggle Explorer Focus",
        }
	},
	config = function ()
		require('neo-tree').setup({
			window = {
				mappings = {
					["l"] = "open",                      -- 'l' to open file
					["h"] = "close_node",                -- 'h' to close folder
					["a"] = { "add", config = { show_path = "relative" } }, -- Add file
					["d"] = "delete",                    -- Delete file
					["r"] = "rename",                    -- Rename
					["y"] = "copy_to_clipboard",         -- Copy path
					["x"] = "cut_to_clipboard",          -- Cut
					["p"] = "paste_from_clipboard",      -- Paste
					["<esc>"] = "cancel",                -- Escape closes prompts
				}
			}
		})
	end
  }
}
