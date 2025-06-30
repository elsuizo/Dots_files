-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = wezterm.config_builder()

-------------------------------------------------------------------------
--window stuff
-------------------------------------------------------------------------
-- config.window_decorations = "RESIZE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 3,
	bottom = 0,
}
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true
-- The filled in variant of the < symbol
local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
-- The filled in variant of the > symbol
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider
-- config.tab_bar_style = {
-- 	-- active_tab_left = wezterm.format({
-- 	-- 	{ Background = { Color = "#0b0022" } },
-- 	-- 	{ Foreground = { Color = "#2b2042" } },
-- 	-- 	{ Text = SOLID_LEFT_ARROW },
-- 	-- }),
-- 	active_tab_right = wezterm.format({
-- 		{ Background = { Color = "#0b0022" } },
-- 		{ Foreground = { Color = "#2b2042" } },
-- 		{ Text = SOLID_RIGHT_ARROW },
-- 	}),
-- 	inactive_tab_left = wezterm.format({
-- 		{ Background = { Color = "#0b0022" } },
-- 		{ Foreground = { Color = "#1b1032" } },
-- 		{ Text = SOLID_LEFT_ARROW },
-- 	}),
-- 	inactive_tab_right = wezterm.format({
-- 		{ Background = { Color = "#0b0022" } },
-- 		{ Foreground = { Color = "#1b1032" } },
-- 		{ Text = SOLID_RIGHT_ARROW },
-- 	}),
-- }
-------------------------------------------------------------------------
--colorscheme
-------------------------------------------------------------------------
--NOTE(elsuizo: 2024-07-08): quiero uno que sea blanco con las letras negras...
config.color_scheme = "Paper (Gogh)"
config.window_background_opacity = 1.0
config.bold_brightens_ansi_colors = "BrightAndBold"

-------------------------------------------------------------------------
--font
-------------------------------------------------------------------------
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.term = "xterm-256color"
config.font = wezterm.font({ family = "JetBrains Mono" })
config.font_rules = {
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font({
			family = "JetBrains Mono",
			weight = "Bold",
		}),
	},
}

-------------------------------------------------------------------------
--tmux like
-------------------------------------------------------------------------
-- leader key like tmux
config.leader = { key = "b", mods = "CTRL", timeout_milliseconds = 2000 }

-- split keybinds
local action = wezterm.action
config.keys = {
	{
		key = "-",
		mods = "LEADER",
		action = action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "\\",
		mods = "LEADER",
		action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

-- panel sizes keybinds
config.keys = {
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "m",
		mods = "LEADER",
		action = action.TogglePaneZoomState,
	},
}

config.keys = {
	{
		key = "c",
		mods = "LEADER",
		action = action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "p",
		mods = "LEADER",
		action = action.ActivateTabRelative(-1),
	},
	{
		key = "n",
		mods = "LEADER",
		action = action.ActivateTabRelative(1),
	},
	{
		key = "l",
		mods = "LEADER",
		action = action.ActivateLastTab,
	},
	{
		key = "k",
		mods = "LEADER",
		action = action.CloseCurrentTab({ confirm = true }),
	},
	{
		key = "F9",
		mods = "LEADER",
		action = action.ShowTabNavigator,
	},
}

return config
