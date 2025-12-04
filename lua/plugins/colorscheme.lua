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
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
