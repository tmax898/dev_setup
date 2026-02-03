if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  opts = {
    provider = "gemini-cli", -- This should set the provider
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
        args = { "--experimental-acp" },
        env = {
          NODE_NO_WARNINGS = "1",
        },
      },
    },
  },
}
