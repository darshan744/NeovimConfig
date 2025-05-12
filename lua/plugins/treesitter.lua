return {
  "nvim-treesitter/nvim-treesitter",  -- Plugin name
  run = ":TSUpdate",  -- Run `:TSUpdate` after installation to install parsers
  dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },  -- Optional, if you want textobjects
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "lua", "python", "javascript", "typescript" , "java" , "c" },  -- List of languages to install parsers for
      highlight = {
        enable = true,  -- Enable syntax highlighting
        disable = {},   -- List of languages to disable highlighting (optional)
      },
      indent = {
        enable = true,  -- Enable automatic indentation based on Tree-sitter
      },
      -- You can add more configurations here as needed
    }
  end,
}

