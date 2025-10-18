return {
  {
    "shaunsingh/nord.nvim",
    priority = 1000,
    config = function()
      --vim.g.nord_disable_background = true
      -- highlight groups to clear background
      vim.cmd.colorscheme("nord")
      local transparent_groups = {
        "Normal",
        "NormalNC",
        "NormalFloat",
        "FloatBorder",
        "SignColumn",
        "LineNr",
        "EndOfBuffer",
        "MsgArea",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopePromptNormal",
        "TelescopePromptBorder",
        "TelescopeResultsNormal",
        "TelescopeResultsBorder",
        "TelescopePreviewNormal",
        "TelescopePreviewBorder",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeFloatBorder",
        "NeoTreeTabActive",
        "NeoTreeTabInactive",
        "NeoTreeTabSeparatorInactive",
        "NvimTreeNormal",
        "NvimTreeNormalNC",
        "LazyNormal",
        "MasonNormal",
        "WhichKeyFloat",
        "Pmenu", -- completion menu
        "PmenuSel",
      }

      for _, group in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none" })
      end
      -- require("nord").set()
    end,
  },
  --  {
  --    "LazyVim/LazyVim",
  --    opts = {
  --      colorscheme = "nord",
  --    },
  --  },
}
