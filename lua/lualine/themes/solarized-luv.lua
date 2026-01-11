local colors, config = require("solarized-luv.colors").setup()

local M = {}

M.normal = {
  a = { bg = colors.blue02, fg = colors.black },
  b = { bg = colors.surface00, fg = colors.base00 },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

M.insert = {
  a = { bg = colors.green02, fg = colors.black },
}

M.command = {
  a = { bg = colors.yellow02, fg = colors.black },
}

M.visual = {
  a = { bg = colors.magenta02, fg = colors.black },
}

M.replace = {
  a = { bg = colors.red02, fg = colors.black },
}

M.terminal = {
  a = { bg = colors.green02, fg = colors.black },
}

M.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue02 },
  b = { bg = colors.bg_statusline, fg = colors.fg, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

if config.lualine_bold then
  for _, mode in pairs(M) do
    mode.a.gui = "bold"
  end
end

return M
