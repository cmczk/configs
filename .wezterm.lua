local wezterm = require "wezterm"
local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

local config = wezterm.config_builder()

config.color_scheme = "Dracula (Official)"
config.font_size = 18.0

return config
