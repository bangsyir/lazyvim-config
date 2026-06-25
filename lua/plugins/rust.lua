return {
  {
    "mrcjkb/rustaceanvim",
    version = "^9", -- Pin to v9.x for 2026 Neovim ecosystems
    lazy = false, -- Plugin takes care of its own lazy-loading
    init = function()
      -- Correct way to configure rustaceanvim without causing a setup nil-value error
      vim.g.rustaceanvim = {
        server = {
          default_settings = {
            ["rust-analyzer"] = {
              cachePriming = {
                enable = true,
              },
              checkOnSave = {
                command = "clippy",
              },
              workspace = {
                symbol = {
                  search = {
                    scope = "workspace_and_dependencies",
                  },
                },
              },
            },
          },
        },
      }
    end,
  },
}
