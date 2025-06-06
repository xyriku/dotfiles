-- Pull in the wezterm API
--
local wezterm = require 'wezterm'


-- This will hold the configuration.
--
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
--
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
-- For example, changing the color scheme:
--
config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font 'Maple Mono'

config.font_size = 14


-- and finally, return the configuration to wezterm
return config
