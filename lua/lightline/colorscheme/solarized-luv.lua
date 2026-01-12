local colors = require("solarized-luv.colors").setup()

local solarized_luv = {}

solarized_luv.normal = {
  left = { { colors.black, colors.blue02 }, { colors.blue02, colors.base02 } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.blue02 }, { colors.base02, colors.surface00 } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

solarized_luv.insert = {
  left = { { colors.black, colors.green02 }, { colors.blue02, colors.base02 } },
}

solarized_luv.visual = {
  left = { { colors.black, colors.magenta02 }, { colors.blue02, colors.base02 } },
}

solarized_luv.replace = {
  left = { { colors.black, colors.red02 }, { colors.blue02, colors.base02 } },
}

solarized_luv.inactive = {
  left = { { colors.blue02, colors.bg_statusline }, { colors.fg, colors.base02 } },
  middle = { { colors.base02, colors.bg_statusline } },
  right = { { colors.base02, colors.bg_statusline }, { colors.fg, colors.base02 } },
}

solarized_luv.tabline = {
  left = { { colors.fg, colors.bg_highlight }, { colors.fg, colors.base02 } },
  middle = { { colors.base02, colors.bg_statusline } },
  right = { { colors.base02, colors.bg_statusline }, { colors.base04, colors.bg } },
  tabsel = { { colors.blue02, colors.base02 }, { colors.base04, colors.bg } },
}

return solarized_luv
