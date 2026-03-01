return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      eslint_d = {
        command = "eslint_d",
        args = { "--fix-to-stdout", "--stdin", "--stdin-filename", "$FILENAME" },
        cwd = require("conform.util").root_file({
          ".git",
          "package.json",
          ".eslintrc",
          ".eslintrc.js",
          ".eslintrc.cjs",
          ".eslintrc.json",
          "eslint.config.js",
        }),
        env = {
          ESLINT_USE_FLAT_CONFIG = "true",
        },
      },
    },
    formatters_by_ft = {
      javascript = { "prettierd", "eslint_d" },
      typescript = { "prettierd", "eslint_d" },
      javascriptreact = { "prettierd", "eslint_d" },
      typescriptreact = { "prettierd", "eslint_d" },
      vue = { "prettierd" },
      svelte = { "prettierd" },
      css = { "prettierd" },
      json = { "prettierd" },
      markdown = { "prettierd" },
    },
  },
}
