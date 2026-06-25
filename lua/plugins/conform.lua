return {
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
  },
}
