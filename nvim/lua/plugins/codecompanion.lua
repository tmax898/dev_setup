return {
  "olimorris/codecompanion.nvim",
  version = "^18.0.0",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
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
    -- NOTE: The log_level is in `opts.opts`
    opts = {
      log_level = "DEBUG",
    },
  },
  keys = {
    {
      "<leader>A",
      function() require("codecompanion").chat() end,
      desc = "CodeCompanion Chat",
    },
  },
}
