return {
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- disable trouble
  { "folke/noice.nvim", enabled = true },
  {
    "windwp/nvim-ts-autotag",
    opts = {},
    lazy = true,
    event = "VeryLazy",
  },
}
