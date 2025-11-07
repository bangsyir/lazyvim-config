return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    -- safely extend the built-in formatter list
    opts.formatters_by_ft = vim.tbl_extend("force", opts.formatters_by_ft or {}, {
      lua = { "stylua" },
      go = { "goimports", "gofmt" },
      javascript = { "prettierd" },
      css = { "prettierd" },
      html = { "prettierd" },
      typescript = { "prettierd" },
      typescriptreact = { "prettierd" },
      json = { "prettierd" },
    })
  end,
}
