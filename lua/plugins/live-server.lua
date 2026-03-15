return {
  {
    "barrettruth/live-server.nvim",
    cmd = { "LiveServerStart", "LiveServerStop" },
    -- Optional: add configuration
    opts = {
      port = 8080, -- default: 8080
      open_app = "chrome", -- default: 'browser'
      -- other options
    },
  },
}
