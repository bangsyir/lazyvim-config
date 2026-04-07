-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "typescriptreact", "javascriptreact", "html" },
  callback = function()
    vim.keymap.set("i", "<CR>", function()
      local line = vim.api.nvim_get_current_line()
      local col = vim.api.nvim_win_get_cursor(0)[2]
      local before = line:sub(1, col)
      local after = line:sub(col + 1)

      -- Check if cursor is between <tag> and </tag>
      if before:match(">[^<]*$") and after:match("^<") then
        return "<CR><ESC>O"
      end

      -- Check if cursor is right after > and before </
      if before:match(">$") and after:match("^<") then
        return "<CR><ESC>O"
      end

      -- Fall back to blink.cmp accept or normal <CR>
      local blink_ok, blink = pcall(require, "blink.cmp")
      if blink_ok and blink.visible() then
        return blink.accept()
      end
      return "<CR>"
    end, { buffer = true, expr = true, replace_keycodes = true })
  end,
})
