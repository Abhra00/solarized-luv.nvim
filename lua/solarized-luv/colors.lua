local Util = require("solarized-luv.util")
local hsluv = require("solarized-luv.hsluv")
local hsluvToHex = hsluv.hsluv_to_hex

local M = {}

---@class Palette
-- stylua: ignore
M.palette = {
  bg           = hsluvToHex({ 219.65, 100.00, 7.66 }),
  bg_highlight = hsluvToHex({ 221.87, 100.00, 15.46 }),
  fg           = hsluvToHex({ 192.18, 15.21, 65.17 }),
  base00       = hsluvToHex({ 220.09, 100.00, 3.26 }),
  base01       = hsluvToHex({ 219.65, 100.00, 7.66 }),
  base02       = hsluvToHex({ 221.87, 100.00, 15.46 }),
  base03       = hsluvToHex({ 221.03, 93.76, 20.35 }),
  base04       = hsluvToHex({ 215.33, 34.73, 44.96 }),
  surface00    = hsluvToHex({ 201.18, 20.32, 60.08 }),
  surface01    = hsluvToHex({ 192.18, 15.21, 65.17 }),
  surface02    = hsluvToHex({ 73.20, 22.86, 92.00 }),
  surface03    = hsluvToHex({ 71.34, 76.23, 96.96 }),
  surface04    = hsluvToHex({ 0.00, 0.00, 100.00 }),
  yellow00     = hsluvToHex({ 59.06, 100.00, 19.64 }),
  yellow01     = hsluvToHex({ 58.81, 100.00, 39.69 }),
  yellow02     = hsluvToHex({ 58.80, 100.00, 59.63 }),
  yellow03     = hsluvToHex({ 58.74, 100.00, 79.47 }),
  yellow04     = hsluvToHex({ 58.71, 100.00, 83.82 }),
  orange00     = hsluvToHex({ 20.47, 94.62, 25.16 }),
  orange01     = hsluvToHex({ 20.64, 94.71, 35.20 }),
  orange02     = hsluvToHex({ 20.54, 94.90, 49.24 }),
  orange03     = hsluvToHex({ 20.49, 94.89, 59.12 }),
  orange04     = hsluvToHex({ 20.77, 95.25, 69.30 }),
  red00        = hsluvToHex({ 12.98, 84.07, 19.14 }),
  red01        = hsluvToHex({ 12.38, 81.88, 29.10 }),
  red02        = hsluvToHex({ 12.55, 82.39, 49.14 }),
  red03        = hsluvToHex({ 12.63, 94.94, 55.06 }),
  red04        = hsluvToHex({ 12.47, 95.74, 65.10 }),
  magenta00    = hsluvToHex({ 348.21, 81.85, 19.57 }),
  magenta01    = hsluvToHex({ 348.54, 81.10, 29.62 }),
  magenta02    = hsluvToHex({ 348.19, 80.97, 49.62 }),
  magenta03    = hsluvToHex({ 348.27, 100.00, 56.32 }),
  magenta04    = hsluvToHex({ 348.26, 100.00, 73.19 }),
  violet00     = hsluvToHex({ 264.39, 56.85, 19.48 }),
  violet01     = hsluvToHex({ 264.29, 56.96, 30.83 }),
  violet02     = hsluvToHex({ 264.29, 57.17, 50.67 }),
  violet03     = hsluvToHex({ 264.19, 77.33, 55.83 }),
  violet04     = hsluvToHex({ 264.18, 77.27, 75.66 }),
  blue00       = hsluvToHex({ 244.12, 93.29, 19.63 }),
  blue01       = hsluvToHex({ 244.51, 93.27, 35.77 }),
  blue02       = hsluvToHex({ 244.63, 93.44, 55.61 }),
  blue03       = hsluvToHex({ 244.65, 93.55, 65.58 }),
  blue04       = hsluvToHex({ 244.60, 93.87, 75.74 }),
  cyan00       = hsluvToHex({ 183.57, 91.48, 19.34 }),
  cyan01       = hsluvToHex({ 181.04, 92.01, 40.25 }),
  cyan02       = hsluvToHex({ 182.33, 91.84, 60.11 }),
  cyan03       = hsluvToHex({ 182.29, 91.89, 73.06 }),
  cyan04       = hsluvToHex({ 181.52, 92.69, 95.10 }),
  green00      = hsluvToHex({ 97.36, 100.00, 19.56 }),
  green01      = hsluvToHex({ 97.34, 100.00, 39.74 }),
  green02      = hsluvToHex({ 97.07, 100.00, 59.68 }),
  green03      = hsluvToHex({ 97.20, 100.00, 70.70 }),
  green04      = hsluvToHex({ 97.33, 100.00, 95.68 }),
}

M.styles = {
  palette = M.palette,
}

---@param opts? solarized_luv.Config
function M.setup(opts)
  opts = require("solarized-luv.config").extend(opts)

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.deepcopy(M.styles.palette)

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green03, 0.25),
    delete = Util.blend_bg(colors.red03, 0.25),
    change = Util.blend_bg(colors.yellow03, 0.25),
    text = colors.blue03,
  }

  colors.git = {
    add = colors.green02,
    change = colors.yellow02,
    delete = colors.red02,
    ignore = colors.base02,
  }

  colors.black = Util.blend_bg(colors.bg, 0.8, "#000000")
  colors.border_highlight = colors.base03
  colors.border = colors.black

  -- Popups always gets a darker bg
  colors.bg_popup = colors.base00

  -- Statusline always gets a lighter bg
  colors.bg_statusline = colors.base03

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.base00
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.base00
    or colors.bg

  colors.float_title = colors.blue02

  colors.bg_visual = colors.blue00
  colors.bg_search = colors.blue01
  colors.fg_sidebar = colors.surface00
  colors.fg_float = colors.fg

  colors.error = colors.red02
  colors.todo = colors.violet02
  colors.warning = colors.yellow02
  colors.info = colors.blue02
  colors.hint = colors.cyan02

  colors.rainbow = {
    colors.blue02,
    colors.yellow02,
    colors.green02,
    colors.cyan02,
    colors.magenta02,
    colors.violet02,
    colors.orange02,
    colors.red02,
  }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.black,
    black_bright   = colors.base03,
    red            = colors.red02,
    red_bright     = colors.red03,
    green          = colors.green02,
    green_bright   = colors.green03,
    yellow         = colors.yellow02,
    yellow_bright  = colors.yellow03,
    blue           = colors.blue02,
    blue_bright    = colors.blue03,
    magenta        = colors.magenta02,
    magenta_bright = colors.magenta03,
    cyan           = colors.cyan02,
    cyan_bright    = colors.cyan03,
    white          = colors.surface01,
    white_bright   = colors.surface04,
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
