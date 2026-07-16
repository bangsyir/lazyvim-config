return {

  -- the opts function can also be used to change the default opts:
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- opts.options.theme = "everforest"
      table.insert(opts.sections.lualine_x, {
        function()
          return "󰣇"
        end,
      })
      opts.options.section_separators = { left = "", right = "" }
      opts.options.component_separators = { left = "", right = "" }
    end,
  },
}
