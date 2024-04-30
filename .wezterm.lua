-- Pull in the wezterm API

local wezterm = require("wezterm")

-- This will hold the configuration.

local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:

config.color_scheme = "Night Owl (Gogh)"

-- fonts
config.font = wezterm.font("FiraCode Nerd Font")

config.keys = {
	{
		key = "d",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "e",
		mods = "CMD|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

config.hide_tab_bar_if_only_one_tab = true
config.pane_focus_follows_mouse = true

-- and finally, return the configuration to wezterm

return config
