local wezterm = require 'wezterm'
local act = wezterm.action

return{
  -- Sart tab bar [distraction-free mode]
  hide_tab_bar_if_only_one_tab = true,

  -- Color scheme
  -- https://wezfurlong.org/wezterm/config/appearance.html
  --
  -- Catppuccin
  -- https://catppuccin.com
  color_scheme = 'Default Dark (base16)',

  window_background_opacity = 0.99,

  -- Font configuration
  -- https://wezfurlong.org/wezterm/config/fonts.html
  font = wezterm.font('JetBrains Mono'),
  font_size = 11.0,

  -- Disable ligatures
  -- https://wezfurlong.org/wezterm/config/font-shaping.html
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },

  -- Cursor style
  default_cursor_style = 'BlinkingBar',

  -- -- Leader key
  -- -- https://wezfurlong.org/wezterm/config/keys.html#leader-key
  -- leader = { key = '`', timeout_milliseconds = 9000 },
  


  keys = {
    -- search for things that look like git hashes
    {
      key = 'H',
      mods = 'SHIFT|CTRL',
      action = act.Search {
        Regex = '[a-f0-9]{6,}',
      },
    },
    -- search for the lowercase string "hash" matching the case exactly
    {
      key = 'H',
      mods = 'SHIFT|CTRL',
      action = act.Search { CaseSensitiveString = 'hash' },
    },
    -- search for the string "hash" matching regardless of case
    {
      key = 'H',
      mods = 'SHIFT|CTRL',
      action = act.Search { CaseInSensitiveString = 'hash' },
    },
  },
}

