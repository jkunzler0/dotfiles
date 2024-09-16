return {
  -- colorscheme
  { "rebelot/kanagawa.nvim" },
  { "sainnhe/gruvbox-material" },
  { "morhetz/gruvbox" },
  { "tomasr/molokai" },
  { "nlknguyen/papercolor-theme" },
  { "sainnhe/everforest" },
  { "gmr458/vscode_modern_theme.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode_modern",
    },
  },

  {
    "theprimeagen/vim-be-good",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function() end,
  },

  {
    "mbbill/undotree",
    lazy = false,
  },

  {
    "ldelossa/gh.nvim",
    dependencies = {
      {
        "ldelossa/litee.nvim",
        config = function()
          require("litee.lib").setup()
        end,
      },
    },
    -- config = function()
    --   require("litee.gh").setup()
    --   local wk = require("which-key")
    --   wk.add({
    --     g = {
    --       name = "+Git",
    --       h = {
    --         name = "+Github",
    --         c = {
    --           name = "+Commits",
    --           c = { "<cmd>GHCloseCommit<cr>", "Close" },
    --           e = { "<cmd>GHExpandCommit<cr>", "Expand" },
    --           o = { "<cmd>GHOpenToCommit<cr>", "Open To" },
    --           p = { "<cmd>GHPopOutCommit<cr>", "Pop Out" },
    --           z = { "<cmd>GHCollapseCommit<cr>", "Collapse" },
    --         },
    --         i = {
    --           name = "+Issues",
    --           p = { "<cmd>GHPreviewIssue<cr>", "Preview" },
    --         },
    --         l = {
    --           name = "+Litee",
    --           t = { "<cmd>LTPanel<cr>", "Toggle Panel" },
    --         },
    --         r = {
    --           name = "+Review",
    --           b = { "<cmd>GHStartReview<cr>", "Begin" },
    --           c = { "<cmd>GHCloseReview<cr>", "Close" },
    --           d = { "<cmd>GHDeleteReview<cr>", "Delete" },
    --           e = { "<cmd>GHExpandReview<cr>", "Expand" },
    --           s = { "<cmd>GHSubmitReview<cr>", "Submit" },
    --           z = { "<cmd>GHCollapseReview<cr>", "Collapse" },
    --         },
    --         p = {
    --           name = "+Pull Request",
    --           c = { "<cmd>GHClosePR<cr>", "Close" },
    --           d = { "<cmd>GHPRDetails<cr>", "Details" },
    --           e = { "<cmd>GHExpandPR<cr>", "Expand" },
    --           o = { "<cmd>GHOpenPR<cr>", "Open" },
    --           p = { "<cmd>GHPopOutPR<cr>", "PopOut" },
    --           r = { "<cmd>GHRefreshPR<cr>", "Refresh" },
    --           t = { "<cmd>GHOpenToPR<cr>", "Open To" },
    --           z = { "<cmd>GHCollapsePR<cr>", "Collapse" },
    --         },
    --         t = {
    --           name = "+Threads",
    --           c = { "<cmd>GHCreateThread<cr>", "Create" },
    --           n = { "<cmd>GHNextThread<cr>", "Next" },
    --           t = { "<cmd>GHToggleThread<cr>", "Toggle" },
    --         },
    --       },
    --     },
    --   }, { prefix = "<leader>" })
    -- end,
    -- config = function()
    --   require("litee.gh").setup()
    -- end,
    keys = {
      { "<leader>ghcc", "<cmd>GHCloseCommit<cr>", desc = "Close Commit" },
      { "<leader>ghce", "<cmd>GHExpandCommit<cr>", desc = "Expand Commit" },
      { "<leader>ghco", "<cmd>GHOpenToCommit<cr>", desc = "Open To Commit" },
      { "<leader>ghcp", "<cmd>GHPopOutCommit<cr>", desc = "Pop Out Commit" },
      { "<leader>ghcz", "<cmd>GHCollapseCommit<cr>", desc = "Collapse Commit" },

      { "<leader>ghip", "<cmd>GHPreviewIssue<cr>", desc = "Preview Issue" },

      { "<leader>ghlt", "<cmd>LTPanel<cr>", desc = "Toggle Panel" },

      { "<leader>ghrb", "<cmd>GHStartReview<cr>", desc = "Begin Review" },
      { "<leader>ghrc", "<cmd>GHCloseReview<cr>", desc = "Close Review" },
      { "<leader>ghrd", "<cmd>GHDeleteReview<cr>", desc = "Delete Review" },
      { "<leader>ghre", "<cmd>GHExpandReview<cr>", desc = "Expand Review" },
      { "<leader>ghrs", "<cmd>GHSubmitReview<cr>", desc = "Submit Review" },
      { "<leader>ghrz", "<cmd>GHCollapseReview<cr>", desc = "Collapse Review" },

      { "<leader>ghpc", "<cmd>GHClosePR<cr>", desc = "Close PR" },
      { "<leader>ghpd", "<cmd>GHPRDetails<cr>", desc = "PR Details" },
      { "<leader>ghpe", "<cmd>GHExpandPR<cr>", desc = "Expand PR" },
      { "<leader>ghpo", "<cmd>GHOpenPR<cr>", desc = "Open PR" },
      { "<leader>ghpp", "<cmd>GHPopOutPR<cr>", desc = "Pop Out PR" },
      { "<leader>ghpr", "<cmd>GHRefreshPR<cr>", desc = "Refresh PR" },
      { "<leader>ghpt", "<cmd>GHOpenToPR<cr>", desc = "Open To PR" },
      { "<leader>ghpz", "<cmd>GHCollapsePR<cr>", desc = "Collapse PR" },

      { "<leader>ghtc", "<cmd>GHCreateThread<cr>", desc = "Create Thread" },
      { "<leader>ghtn", "<cmd>GHNextThread<cr>", desc = "Next Thread" },
      { "<leader>ghtt", "<cmd>GHToggleThread<cr>", desc = "Toggle Thread" },
    },
  },
  -- {
  --   "folke/which-key.nvim",
  --   opts = {
  --     defaults = {
  --       ["<leader>gh"] = { name = "+GitHub" },
  --     },
  --   },
  -- },
  -- local wk = require("which-key")
  -- wk.add({
  --     {"<leader>gh", group = "GitHub"}
  --   })
  --
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              configurationSources = {},
              plugins = {
                -- Enable rope plugins
                rope_autoimport = {
                  enabled = true,
                  code_actions = { enabled = true },
                  completions = { enabled = true },
                  memory = false,
                },
                rope_completion = {
                  enabled = true,
                  eager = false,
                },
                -- Enable style plugins
                pylint = { enabled = true },
                pycodestyle = {
                  enabled = false
                },
                pydocstyle = {
                  enabled = false,
                },

                -- Disable all other plugins
                autopep8 = { enabled = false },
                flake8 = { enabled = false },
                jedi_completion = { enabled = false },
                jedi_definition = { enabled = false },
                jedi_hover = { enabled = false },
                jedi_references = { enabled = false },
                jedi_signature_help = { enabled = false },
                jedi_symbols = { enabled = false },
                mccabe = { enabled = false },
                preload = { enabled = false },
                pyflakes = { enabled = false },
                yapf = { enabled = false },
              },
            },
          },
        },
      },
    },
  }
}




