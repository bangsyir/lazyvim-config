return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsc = {
        cmd = { "tsc", "--lsp", "--stdio" },
        filetypes = {
          "javascript",
          "javascriptreact",
          "javascript.jsx",
          "typescript",
          "typescriptreact",
          "typescript.tsx",
        },
        settings = {
          ["js/ts"] = {
            -- implementationsCodeLens = {
            --   enabled = true,
            --   showOnAllClassMethods = true,
            --   showOnInterfaceMethods = true,
            -- },
            inlayHints = {
              enumMemberValues = {
                enabled = false,
              },
              functionLikeReturnTypes = {
                enabled = false,
              },
              parameterNames = {
                enabled = "none",
              },
              parameterTypes = {
                enabled = false,
              },
              propertyDeclarationTypes = {
                enabled = false,
              },
              variableTypes = {
                enabled = false,
              },
            },
            referencesCodeLens = {
              enabled = true,
              showOnAllFunctions = true,
            },
          },
        },
        -- Auto-detect local project node_modules/.bin/tsc or fallback to global tsc
        -- on_new_config = function(new_config, new_root_dir)
        --   local util = require("lspconfig.util")
        --   local local_bin = util.path.join(new_root_dir, "node_modules", ".bin", "tsc")
        --   if vim.uv.fs_stat(local_bin) then
        --     new_config.cmd = { local_bin, "--lsp", "--stdio" }
        --   end
        -- end,
      }, -- 2. Disable default servers to prevent duplicate diagnostics
      vtsls = { enabled = false },
      ts_ls = { enabled = false },
      tsserver = { enabled = false },
      -- pyright will be automatically installed with mason and loaded with lspconfig
      -- tsgo = {
      --   -- cmd = { "tsc", "--lsp", "--stdio" },
      --   settings = {
      --     typescript = {
      --       inlayHints = {
      --         parameterNames = { enabled = "none" },
      --         parameterTypes = { enabled = false },
      --         variableTypes = { enabled = false },
      --         functionLikeReturnTypes = { enabled = false },
      --         propertyDeclarationTypes = { enabled = false },
      --         enumMemberValues = { enabled = false },
      --       },
      --     },
      --   },
      -- },
      html = {
        filetypes = { "html", "mustache" }, -- Extends HTML LSP to Mustache files
      },
    },
    -- setup = {
    --   tsc = function(_, opts)
    --     -- Setup necessary if not auto-detected
    --     require("lspconfig.configs").tsc = { default_config = opts }
    --   end,
    -- },
  },
}
