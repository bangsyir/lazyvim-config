return {
  -- add typescript-tools.nvim
  {
    "pmizio/typescript-tools.nvim",
    -- Important: ensure it runs after lspconfig and plenary
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    -- The config function is where you'll call require("typescript-tools").setup
    config = function()
      require("typescript-tools").setup({
        -- Your configuration settings will go here
        -- See Section 2 for configuration details
        settings = {
          -- ... plugin-specific settings ...
          separate_diagnostic_server = true,
          publish_diagnostic_on = "insert_leave",
        },
        -- You can also include standard nvim-lspconfig options here
        -- For example, custom on_attach
        -- on_attach = function(client, bufnr)
        --   -- Your on_attach function
        -- end,
        -- Enable JSX closing tag auto-completion (VS Code feature)
        jsx_close_tag = {
          enable = true,
          -- Ensure these filetypes are correct for your usage
          filetypes = { "javascriptreact", "typescriptreact" },
        },

        -- Tsserver Preferences (often for fine-tuning performance and features)
        tsserver_file_preferences = {
          -- Disable to potentially improve performance on large projects,
          -- or enable for full path suggestions.
          allowRenameOfImportPath = false,
          -- Set to "auto" or "double" or "single"
          quotePreference = "auto",
        },

        -- Tsserver Configuration (can help with large projects that use a lot of memory)
        -- You may need to experiment with this value. 3072MB is the VS Code default.
        -- Increase if you work on very large projects.
        tsserver_max_memory = 4096, -- e.g., 4096 (in MB)

        -- If you want to use the Tsserver's built-in formatting options:
        -- tsserver_format_options = {
        --   indentSize = 2,
        --   tabSize = 2,
        --   convertTabsToSpaces = true,
        -- },
      })
    end,
  },
}
