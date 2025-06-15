return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Show hidden items
        hide_dotfiles = false, -- Show dotfiles like .env
        hide_gitignored = false, -- Show .gitignored like dist/, etc.
        hide_by_name = {
          -- Comment out folders you DO want to see
          "node_modules",
          -- "dist",
        },
        never_show = {
          ".git",
        },
      },
    },
  },
}
