-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })

-- Perusing code faster with K and J
vim.keymap.set({ "n", "v" }, "K", "5kzz", { noremap = true, desc = "Up faster" })
vim.keymap.set({ "n", "v" }, "J", "5jzz", { noremap = true, desc = "Down faster" })

-- Remap K and J
vim.keymap.set({ "n", "v" }, "<leader>k", "K", { noremap = true, desc = "Keyword" })
vim.keymap.set({ "n", "v" }, "<leader>j", "J", { noremap = true, desc = "Join lines" })

-- Save file
vim.keymap.set("n", "<leader>W", "<cmd>w<cr>", { noremap = true, desc = "Save window" })
