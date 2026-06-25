return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig

      tsgo = {
        flags = {
          debounce_text_changes = 500, -- Set to 150ms or higher
        },

        settings = {
          separate_diagnostic_server = true,
          publish_diagnostic_mode = "insert_leave", -- Note: it is 'publish_diagnostic_mode'
          expose_as_code_action = "all",

          -- Additional large-file optimizations
          disable_member_code_lens = true,
          typescript = {
            tsserver = {
              maxTsServerMemory = 4096,
            },
            inlayHints = {
              -- parameterNames = { enabled = "none" },
              parameterTypes = { enabled = false },
              variableTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              functionLikeReturnTypes = { enabled = false },
              enumMemberValues = { enabled = false },
            },
          },
          experimental = {
            enable = false,
          },
        },
        on_init = function(client)
          client.server_capabilities.semanticTokensProvider = nil
          client.server_capabilities.documentHighlightProvider = false
        end,
      },
    },
  },
}
