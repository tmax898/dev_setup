-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.pack.elixir-phoenix" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.json" },
  -- import/override with your plugins folder
}
