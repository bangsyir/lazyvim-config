return {
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- disable trouble
  { "folke/trouble.nvim", enabled = true },
  { "folke/noice.nvim", enabled = false },
  {
    "windwp/nvim-ts-autotag",
    opts = {},
    config = function()
      require("nvim-ts-autotag").setup()
    end,
    lazy = true,
    event = "VeryLazy",
  },
}
