return {
  {
<<<<<<< HEAD
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true, -- Load immediately at startup
    priority = 1000,
    opts = {
      -- Set the desired flavor (mocha is the default dark option)
      flavour = "macchiato",

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
        blink_cmp = true,
      },
      -- Optional: Set specific highlight styles
      styles = {
        comments = { "italic" },
      },
=======
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
      italic_comments = true,
      overrides = function()
        return {
          SnacksPickerPathHidden = { bg = "none", fg = "#808080" },
          SnacksPickerPathIgnored = { bg = "none", fg = "#808080" },
          SnacksPickerGitStatusUntracked = { bg = "none", fg = "#808080" },
          Directory = { fg = "#00fff0", force = true },
          SnacksPickerDirectory = { fg = "#8DDCDC", force = true },
          SnacksPickerGitStatusModified = { fg = "#FFEE8C" },
        }
      end,
>>>>>>> c328bd0 (new lazyvim setup)
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
<<<<<<< HEAD
      colorscheme = "catppuccin-macchiato",
=======
      colorscheme = "cyberdream",
>>>>>>> c328bd0 (new lazyvim setup)
    },
  },
}
