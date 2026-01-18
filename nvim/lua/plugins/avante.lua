return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  opts = {
    provider = "gemini", -- This should set the provider
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
    -- Do not use gemini-cli as a provider until https://github.com/google-gemini/gemini-cli/issues/14986 and the bug related to hit has been resolved
    acp_providers = {
      ["gemini-cli"] = {
        command = "gemini",
        model = "gemini-2.5-flash",
        args = { "--experimental-acp" },
        env = {
          NODE_NO_WARNINGS = "1",
          GEMINI_API_KEY = os.getenv "AVANTE_GEMINI_API_KEY",
        },
      },
    },
  },
}
