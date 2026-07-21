return {
  {

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
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
