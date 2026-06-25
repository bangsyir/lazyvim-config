return {
<<<<<<< HEAD
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
      javascript = { "prettierd", "eslint" },
      typescript = { "prettierd", "eslint" },
      javascriptreact = { "prettierd", "eslint" },
      typescriptreact = { "prettierd", "eslint" },
      vue = { "prettierd" },
      svelte = { "prettierd" },
      css = { "prettierd" },
      json = { "prettierd" },
      markdown = { "prettierd" },
    },
=======
  {
    "stevearc/conform.nvim",
    opts = {

      formatters_by_ft = {
        javascript = { "prettier", "eslint" },
        typescript = { "prettier", "eslint" },
        javascriptreact = { "prettier", "eslint" },
        typescriptreact = { "prettier", "eslint" },
        vue = { "prettier", "eslint" },
        svelte = { "prettier", "eslint" },
        css = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
      },
    },
>>>>>>> c328bd0 (new lazyvim setup)
  },
}
