return {
  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        signature = {
          auto_open = {
            enabled = false,
          },
        },
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      -- Remap hover
      keys[#keys + 1] = { "K", false }
      keys[#keys + 1] = { "gk", vim.lsp.buf.hover, desc = "Hover" }
    end,
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = {
  --     pumblend = {
  --       enabled = false,
  --     },
  --   }
  -- }
}

