local state = {
  floating = {
    buf = -1,
    win = -1,
  },
}

local function create_floating_window(opts)
  -- Default settings
  opts = opts or {}
  local width = opts.width or math.floor(vim.o.columns * 0.8)
  local height = opts.height or math.floor(vim.o.lines * 0.8)

  -- Calculate the position to center the window
  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines - height) / 2)

  -- Create a buffer
  local buf = nil
  if vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true) -- No file, scratch buffer
  end

  -- 2. Define the window configuration
  local win_config = {
    relative = "editor", -- Position relative to the main editor grid
    row = row,
    col = col,
    width = width,
    height = height,
    border = "rounded", -- Use a nice rounded border (v0.6.0+)
    style = "minimal", -- Hide scrollbar, line numbers, and tabline
    focusable = true, -- Allow the window to be focused
    -- You can set a title:
    title = "terminal@bangsyir",
    title_pos = "center",
  }

  -- 3. Open the floating window
  -- The 'enter' boolean is true to jump focus to the new window
  local win = vim.api.nvim_open_win(buf, true, win_config)
  return { buf = buf, win = win }
end

local toggle_terminal = function()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window({ buf = state.floating.buf })
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.terminal()
      vim.bo[state.floating.buf].buflisted = false
    end
    vim.cmd("startinsert")
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

-- Example usage:
-- Create a floating window with default dimensions
vim.api.nvim_create_user_command("Floaterminal", toggle_terminal, {})
-- Example usage 1: Create a default 80% window
-- You can run this directly in Neovim with :lua create_centered_float()
-- create_centered_float()

-- Example usage 2: Create a smaller, specific size window
-- You can run this directly in Neovim with :lua create_centered_float({ width = 60, height = 15 })
-- create_centered_float({ width = 60, height = 15 })
