local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	color_scheme = "Tokyo Night (Gogh)",
	font = wezterm.font("FiraCode Nerd Font Propo"),
	font_size = 12.5,
}

return config
