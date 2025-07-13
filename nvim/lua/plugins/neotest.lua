return {
  "nvim-neotest/neotest",
  dependencies = {
    "arthur944/neotest-bun",
  },
  opts = function(_, opts)
    if not opts.adapters then opts.adapters = {} end
    table.insert(opts.adapters, require "neotest-bun"(require("astrocore").plugin_opts "neotest-bun"))
  end,
}
