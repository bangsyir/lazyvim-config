return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- React/JS/TS files
      javascript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      -- Vue files
      vue = { "prettierd" },
      svelte = { "prettierd" },
      -- Optional: Add others like CSS, JSON, etc., if needed
      css = { "prettierd" },
      json = { "prettierd" },
      markdown = { "prettierd" },
    },
  },
}
