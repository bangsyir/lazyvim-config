return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        -- Filetypes (already includes Vue from extras, but explicit for clarity)
        filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue" },
        settings = {
          vtsls = {
            tsserver = {
              -- Performance tweaks: Reduce completion load
              preferences = {
                -- Limit suggestions to essentials
                disableSuggestions = false, -- Keep if needed; set true to fully disable
                includePackageJsonAutoImports = "off", -- Avoid scanning package.json for imports (big perf win)
                autoImportFileExcludePatterns = { "node_modules/", ".next/", "dist/" }, -- Exclude dirs from auto-imports
              },
              -- Completion limits (vtsls-specific, from 2024 updates)
              experimental = {
                completion = {
                  entriesLimit = 30, -- Cap at 30 items (default ~100; reduces lag on trigger)
                  enableServerSideFuzzyMatch = true, -- Filter fuzzy on server (faster than client-side)
                },
              },
              -- Inlay hints: Disable most (common lag source in TSX/Vue)
              inlayHints = {
                includeInlayParameterNameHints = "none",
                includeInlayEnumMemberValueHints = false,
                includeInlayFunctionLikeReturnTypeHints = false,
                includeInlayFunctionParameterTypeHints = false,
                includeInlayVariableTypeHints = false,
                includeInlayPropertyDeclarationTypeHints = false,
                includeInlayFunctionLikeCallArgumentTypeHints = false,
                includeInlayImplicitTypeArguments = false,
                includeInlayCallExpressionArgumentTypeHints = false,
                includeInlayIndexSignatureValueTypeHints = false,
                includeInlayObjectLiteralPropertyTypeHints = false,
              },
            },
          },
        },
        -- Memory boost for large projects (vtsls 2025 default: 3072MB; bump if monorepo)
        maxTsServerMemory = 4096, -- 4GB; adjust based on RAM (e.g., 8192 for 16GB+ systems)
        init_options = {
          all_experimental = {
            completion = { enable = true }, -- Keep experimental completions if wanted
          },
        },
        on_init = function(client)
          -- Disable semantic tokens (highlighting lag in insert mode)
          client.server_capabilities.semanticTokensProvider = nil
          -- Optional: Disable document highlights (if causing delays)
          client.server_capabilities.documentHighlightProvider = false
        end,
      },
      -- vue_ls: Ensure hybrid delegates to vtsls (no changes needed, but tune if Vue-specific lag)
      vue_ls = {
        init_options = {
          vue = {
            hybridMode = true, -- Leverages vtsls for TS perf
          },
        },
        settings = {
          -- Mirror vtsls inlay tweaks for consistency
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "none",
              -- Add others as above if needed
            },
          },
        },
      },
      -- Svelte: If using lang.svelte, add similar if lag there
      svelte = {
        settings = {
          typescript = {
            inlayHints = { includeInlayParameterNameHints = "none" },
          },
        },
      },
    },
  },
}
