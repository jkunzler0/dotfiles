-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- Disable autoformat for all files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "*" },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
--   pattern = { "*" },
--   command = "silent! wall",
--   nested = true,
-- })

-- auto save buffer
-- if vim.options.auto_save then
vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave" }, {
  pattern = { "*" },
  callback = function()
    if vim.bo.ft == "harpoon" then
      return
    end
    vim.cmd("silent! wall")
  end,
  nested = true,
})
-- end

