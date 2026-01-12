local colors = require("solarized-luv.colors").setup()

local solarized_luv = {}

solarized_luv.normal = {
  left = { { colors.black, colors.blue02 }, { colors.blue02, colors.surface00 } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.blue02 }, { colors.blue02, colors.surface00 } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

solarized_luv.insert = {
  left = { { colors.black, colors.green02 }, { colors.blue02, colors.bg } },
}

solarized_luv.visual = {
  left = { { colors.black, colors.magenta02 }, { colors.blue02, colors.bg } },
}

solarized_luv.replace = {
  left = { { colors.black, colors.red }, { colors.blue02, colors.bg } },
}

solarized_luv.inactive = {
  left = { { colors.blue02, colors.bg_statusline }, { colors.base04, colors.bg } },
  middle = { { colors.surface00, colors.bg_statusline } },
  right = { { colors.surface00, colors.bg_statusline }, { colors.base04, colors.bg } },
}

solarized_luv.tabline = {
  left = { { colors.base04, colors.bg_highlight }, { colors.base04, colors.bg } },
  middle = { { colors.surface00, colors.bg_statusline } },
  right = { { colors.surface00, colors.bg_statusline }, { colors.base04, colors.bg } },
  tabsel = { { colors.blue02, colors.surface00 }, { colors.base04, colors.bg } },
}

return solarized_luv
