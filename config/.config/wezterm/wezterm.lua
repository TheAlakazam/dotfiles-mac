local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_confg = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
}

return config
