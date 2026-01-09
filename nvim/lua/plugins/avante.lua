return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  opts = {
    provider = "gemini", -- This sets Gemini as the main provider
    providers = {
      gemini = {
        model = "gemini-2.5-flash",
        display_name = "Gemini 2.5 Flash",
      },
      ["gemini/lite"] = {
        __inherited_from = "gemini",
        model = "gemini-2.5-flash-lite",
        display_name = "Gemini 2.5 Flash Lite",
      },
      ["gemini/pro"] = {
        __inherited_from = "gemini",
        model = "gemini-2.5-pro",
        display_name = "Gemini 2.5 Pro",
      },
    },
  },
}
