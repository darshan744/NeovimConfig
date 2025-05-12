return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed.
    "folke/snacks.nvim",

  },
	
	config = function() 
			vim.keymap.set("n" ,"<leader>gs"  ,function()  vim.cmd("Neogit") end , {desc = "Open neogit"} )
	end
}
