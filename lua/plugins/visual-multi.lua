return {
  {
    "mg979/vim-visual-multi",
    lazy = false, -- Essential: ensures the plugin is loaded immediately
    init = function()
      -- Optional: Place global configuration variables here
      -- Example from the documentation for custom keymaps:
      -- vim.g.VM_maps = {} -- Clear default maps if you want full control
      -- vim.g.VM_leader = "\\" -- Set a leader for some maps if needed
    end,
    config = function()
      -- Optional: Set up keymaps here if you need to use vim.keymap.set
      -- Example of setting a keymap for "Find Under" in normal mode:
      -- vim.keymap.set("n", "<C-x>", "<Plug>(VM-Find-Under)")
    end,
  },
}
