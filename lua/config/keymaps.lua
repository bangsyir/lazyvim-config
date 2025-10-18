-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map({ "n", "t" }, "<A-i>", "<cmd>Floaterminal<cr>", { desc = "Floating Terminal" })

-- normal mode
map("n", "<A-Down>", "mz:m .+1<CR>==`z", { desc = "Move line down" })
map("n", "<A-Up>", "mz:m .-2<CR>==`z", { desc = "Move line up" })
map("n", "<A-Left>", "<<", { desc = "Dedent line" }) -- Move line left (dedent)
map("n", "<A-Right>", ">>", { desc = "Indent line" }) -- Move line right (indent)
-- visual mode
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" }) -- move line up(v)
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" }) -- move line down(v)
map("v", "<A-Left>", "<gv", { desc = "Dedent selection" }) -- Move selection left (dedent)
map("v", "<A-Right>", ">gv", { desc = "Indent selection" }) -- Move selection right (indent)
