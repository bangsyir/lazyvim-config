return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- 1. Disable the default LazyVim TypeScript servers
      servers = {
        vtsls = { enabled = false }, -- LazyVim's default
        ts_ls = { enabled = false }, -- Older tsserver name

        -- 2. Enable and configure tsgo
        tsgo = {
          settings = {
            typescript = {
              inlayHints = {
                -- Set to false to hide the "hidden types" you mentioned
                parameterNames = { enabled = "none" },
                parameterTypes = { enabled = false },
                variableTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                enumMemberValues = { enabled = false },
              },
            },
          },
        },
      },
    },
  },
}
