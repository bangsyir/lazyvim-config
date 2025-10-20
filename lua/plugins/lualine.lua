return {
  --   -- the opts function can also be used to change the default opts:
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- Import the Catppuccin color palette utility
      local colors = require("catppuccin.palettes").get_palette()

      -- Define your custom Catppuccin theme overrides
      local custom_catppuccin_theme = {
        normal = {
          -- Customize Section A (lualine_a) where 'mode' is located
          a = {
            -- Mode background color: Use the accent color 'green'
            bg = colors.green,
            -- Mode foreground color: Use the darkest color 'crust' for contrast
            fg = colors.crust,
            -- Style: Make the mode text bold
            gui = "bold",
          },
          -- Customize Section B (lualine_b) where 'branch' is located
          b = {
            -- Branch background color: Use the accent color 'sky'
            bg = colors.base,
            -- Branch foreground color: Use the darkest color 'crust' for contrast
            fg = colors.sapphire,
          },
          -- Ensure Section C is transparent by using the base color from Catppuccin
          c = { fg = colors.text, bg = "" },
          -- Ensure other sections (X, Y, Z) are transparent or use Catppuccin defaults
          x = { fg = colors.subtext1, bg = colors.base },
          y = { fg = colors.subtext1, bg = colors.base },
          z = { fg = colors.subtext1, bg = colors.base },
        },
        inactive = {
          -- Keep inactive sections subtle and transparent
          c = { fg = colors.subtext0, bg = "none" },
          a = { fg = colors.subtext0, bg = "none" },
          b = { fg = colors.subtext0, bg = "none" },
          x = { fg = colors.subtext0, bg = "none" },
          y = { fg = colors.subtext0, bg = "none" },
          z = { fg = colors.subtext0, bg = "none" },
        },
      }

      -- basic simple look: remove fancy separators & icons
      opts.options = {
        theme = "Catppuccin", -- or "nord", "gruvbox", "tokyonight", etc.
        component_separators = "",
        section_separators = "",
        icons_enabled = true, -- removes filetype/devicons icons
        globalstatus = true, -- one statusline for all windows
      }
      -- The theme option now accepts a table, which is your custom theme
      -- This overwrites the default 'Catppuccin' theme with your specific color choices.
      opts.options.theme = custom_catppuccin_theme

      -- define what you want to show
      opts.sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { { "filename", path = 1 } }, -- show relative path
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      }

      -- remove extra inactive sections
      opts.inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      }
      -- opts.options.theme = {
      --   normal = { c = { fg = "none", bg = "none" } },
      --   inactive = { c = { fg = "none", bg = "none" } },
      -- }
      return opts
    end,
  },
}
