local themes = {}
-- WARN : MUST INCLUDE NAME PROPERTY IN THE THEMES
themes.plugins = {
  { "catppuccin/nvim", name = "catppuccin" },
  { "folke/tokyonight.nvim", name = "tokyonight" }, -- no name, fallback used
  { "rebelot/kanagawa.nvim", name = "kanagawa" }, -- no name, fallback used
  { "rose-pine/neovim", name = "rose-pine" },
  { "Mofiqul/vscode.nvim", name = "vscode-theme" },
  { "shaunsingh/nord.nvim", name = "nord" },
}
themes.names = {}
for _, theme in ipairs(themes.plugins) do
  local name = theme.name
  if not name then name = theme[1] end
  table.insert(themes.names, name)
end
return themes
