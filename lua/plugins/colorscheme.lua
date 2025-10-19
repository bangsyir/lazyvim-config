return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- Load immediately at startup
    priority = 1000,
    opts = {
      -- Set the desired flavor (mocha is the default dark option)
      flavour = "mocha",

      -- *** CRITICAL: Enables transparent background for the main buffer ***
      transparent_background = true,

      -- Optional: Also make floating windows (like popups and documentation) transparent
      float = {
        transparent = true,
      },

      -- Example Integrations (LazyVim often sets sensible defaults, but you can be explicit)
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        lsp_trouble = true,
        notify = true,
      },

      -- Optional: Set specific highlight styles
      styles = {
        comments = { "italic" },
      },
    },
  },
  -- {
  --   "shaunsingh/nord.nvim",
  --   priority = 1000,
  --   config = function()
  --     --vim.g.nord_disable_background = true
  --     -- highlight groups to clear background
  --     vim.cmd.colorscheme("nord")
  --     local transparent_groups = {
  --       "Normal",
  --       "NormalNC",
  --       "NormalFloat",
  --       "FloatBorder",
  --       "SignColumn",
  --       "LineNr",
  --       "EndOfBuffer",
  --       "MsgArea",
  --       "TelescopeNormal",
  --       "TelescopeBorder",
  --       "TelescopePromptNormal",
  --       "TelescopePromptBorder",
  --       "TelescopeResultsNormal",
  --       "TelescopeResultsBorder",
  --       "TelescopePreviewNormal",
  --       "TelescopePreviewBorder",
  --       "NeoTreeNormal",
  --       "NeoTreeNormalNC",
  --       "NeoTreeFloatBorder",
  --       "NeoTreeTabActive",
  --       "NeoTreeTabInactive",
  --       "NeoTreeTabSeparatorInactive",
  --       "NvimTreeNormal",
  --       "NvimTreeNormalNC",
  --       "LazyNormal",
  --       "MasonNormal",
  --       "WhichKeyFloat",
  --       "Pmenu", -- completion menu
  --       "PmenuSel",
  --     }
  --
  --     for _, group in ipairs(transparent_groups) do
  --       vim.api.nvim_set_hl(0, group, { bg = "none" })
  --     end
  --     -- require("nord").set()
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
