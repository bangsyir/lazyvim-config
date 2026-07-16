return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig

      tsgo = {
        settings = {
          typescript = {
            inlayHints = {
              parameterNames = { enabled = "none" },
              parameterTypes = { enabled = false },
              variableTypes = { enabled = false },
              functionLikeReturnTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              enumMemberValues = { enabled = false },
            },
          },
        },
      },
    },
  },
}
