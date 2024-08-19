-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Perusing code faster with K and J
vim.keymap.set({ "n", "v" }, "K", "5kzz", { noremap = true, desc = "Up faster" })
vim.keymap.set({ "n", "v" }, "J", "5jzz", { noremap = true, desc = "Down faster" })

-- Remap K and J
-- K is remaped in plugins/lazy_remap.lua
vim.keymap.set({ "n", "v" }, "<leader>j", "J", { noremap = true, desc = "Join lines" })

-- Save file
vim.keymap.set("n", "<leader>W", "<cmd>w<cr>", { noremap = true, desc = "Save window" })

-- Window resizing
vim.keymap.set("n", "<C-S-Left>", "<C-Left>", { noremap = true, desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-S-Right>", "<C-Right>", { noremap = true, desc = "Increase Window Width" })

