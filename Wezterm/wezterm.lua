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
-- config.color_scheme = "Paper (Gogh)"
-- config.color_scheme = "Modus Operandi (Gogh)"
config.window_background_opacity = 0.7
-- config.bold_brightens_ansi_colors = "BrightAndBold"

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
		italic = true,
		font = wezterm.font({
			family = "JetBrains Mono",
		}),
	},
}

-------------------------------------------------------------------------
--tmux like
-------------------------------------------------------------------------
-- leader key like tmux
config.leader = { key = "b", mods = "CTRL", timeout_milliseconds = 1000 }

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
	{
		key = "h",
		mods = "LEADER",
		action = action.SpawnCommandInNewTab({
			cwd = wezterm.home_dir,
		}),
	},
	{
		key = "N",
		mods = "LEADER",
		action = wezterm.action.PromptInputLine({
			description = "Enter new name for tab",
			action = wezterm.action_callback(function(window, _, line)
				if line then
					window:active_tab():set_title(line)
				end
			end),
		}),
	},
}

--NOTE(elsuizo: 2026-03-20): cuando queremos activar un tab por el numero
-- cuando queremos activar un tab por el numero
for i = 1, 7 do
	-- CTRL+ALT + number to activate that tab
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = action.ActivateTab(i - 1),
	})
end

config.colors = {

	foreground = "#ffffff",
	background = "#121212",
	cursor_bg = "#5c5cff",
	cursor_fg = "#0e0e1b",
	cursor_border = "#5c5cff",
	selection_fg = "#d1d1e0",
	selection_bg = "#262659",

	ansi = {
		"#252525", -- Black
		"#d02b61", -- Red
		"#99cc99", -- Green
		"#f3f8df", -- Yellow
		"#5688af", -- Blue
		"#192c69", -- Magenta
		"#b9423b", -- Cyan
		"#ffffff", -- White
	},
	brights = {
		"#a2c522", -- BrBlack
		"#b20e1a", -- BrRed
		"#99cc99", -- BrGreen
		"#f3f8df", -- BrYellow
		"#5688af", -- BrBlue
		"#192c69", -- BrMagenta
		"#b9423b", -- BrCyan
		"#ffffff", -- BrWhite
	},
}

return config
