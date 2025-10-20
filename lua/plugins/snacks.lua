return {
  {
    "catppuccin/nvim",
    opts = function(_, opts)
      opts.custom_highlights = function()
        return {
          SnacksDashboardHeader = { fg = "#A3BE8C" }, -- Lime green like Omarchy logo
          SnacksDashboardKey = { fg = "#D8DEE9" }, -- Color for keybindings (e.g., <leader>ff)
          SnacksDashboardButton = { fg = "#D8DEE9" },
        }
      end
      return opts
    end,
  },
}
