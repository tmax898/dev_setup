return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "lalitmee/codecompanion-spinners.nvim",
    "j-hui/fidget.nvim",
  },
  opts = {
    log_level = "DEBUG",
    extensions = {
      spinner = {
        opts = {
          style = "fidget",
        },
      },
    },
    interactions = {
      chat = {
        adapter = "gemini_cli",
      },
    },
    adapters = {
      acp = {
        gemini_cli = function()
          return require("codecompanion.adapters").extend("gemini_cli", {
            defaults = {
              auth_method = "oauth-personal", -- "oauth-personal"|"gemini-api-key"|"vertex-ai"
            },
          })
        end,
      },
    },
  },
  keys = {
    {
      "<leader>a",
      function() require("codecompanion").chat() end,
      desc = "CodeCompanion Chat",
    },
  },
}
