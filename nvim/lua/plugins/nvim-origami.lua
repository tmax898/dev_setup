return {
  {
    "chrisgrieser/nvim-origami",
    event = "VeryLazy",
    opts = {
      pauseFoldsWhileSearching = true,
      setupFoldKeymaps = false, -- Optional: adds 'h' and 'l' for folding
      autoFold = {
        enabled = true,
        kinds = { "imports" }, ---@type lsp.FoldingRangeKind[]
      },
    },
    init = function()
      -- Required AstroNvim settings for the plugin
      vim.opt.foldlevel = 99
      vim.opt.foldlevelstart = 99
    end,
  },
}
