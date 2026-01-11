local Util = require("solarized-luv.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.base04, 0.3), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug   = { fg = c.base04 },
    SnacksNotifierTitleDebug  = { fg = c.base04  },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = Util.blend_bg(c.error, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError   = { fg = c.error },
    SnacksNotifierTitleError  = { fg = c.error },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = Util.blend_bg(c.info, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo    = { fg = c.info },
    SnacksNotifierTitleInfo   = { fg = c.info },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.violet02, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace   = { fg = c.violet02 },
    SnacksNotifierTitleTrace  = { fg = c.violet02 },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = Util.blend_bg(c.warning, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn    = { fg = c.warning },
    SnacksNotifierTitleWarn   = { fg = c.warning },
    -- Dashboard
    SnacksDashboardDesc       = { fg = c.cyan02 },
    SnacksDashboardFooter     = { fg = c.blue02 },
    SnacksDashboardHeader     = { fg = c.blue02 },
    SnacksDashboardIcon       = { fg = c.blue02 },
    SnacksDashboardKey        = { fg = c.orange02 },
    SnacksDashboardSpecial    = { fg = c.blue03 },
    SnacksDashboardDir        = { fg = c.base03 },
    -- Profiler
    SnacksProfilerIconInfo    = { bg = Util.blend_bg(c.blue01, 0.3), fg = c.blue01 },
    SnacksProfilerBadgeInfo   = { bg = Util.blend_bg(c.blue01, 0.1), fg = c.blue01 },
    SnacksFooterKey           = "SnacksProfilerIconInfo",
    SnacksFooterDesc          = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace   = { bg = Util.blend_bg(c.blue04, 0.3), fg = c.base03 },
    SnacksProfilerBadgeTrace  = { bg = Util.blend_bg(c.blue04, 0.1), fg = c.base03 },
    SnacksIndent              = { fg = c.base02, nocombine = true },
    SnacksIndentScope         = { fg = c.cyan02, nocombine = true },
    SnacksZenIcon             = { fg = c.violet02 },
    SnacksInputIcon           = { fg = c.blue03 },
    SnacksInputBorder         = { fg = c.blue02 },
    SnacksInputTitle          = { fg = c.blue02 },
    -- Picker
    SnacksPickerInputBorder   = { fg = c.border_highlight, bg = c.bg_float },
    SnacksPickerInputTitle    = { fg = c.orange02, bg = c.bg_float },
    SnacksPickerBoxTitle      = { fg = c.blue03, bg = c.bg_float },
    SnacksPickerSelected      = { fg = c.magenta03},
    SnacksPickerToggle        = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent= { fg = c.fg, bg = c.magenta04, bold = true },
    SnacksPickerPickWin       = { fg = c.fg, bg = c.bg_search, bold = true },
    SnacksGhLabel             = { fg = c.blue02, bold = true },
    SnacksGhDiffHeader        = { bg = Util.blend_bg(c.blue03, 0.1), fg = c.blue02 },
  }
  for i, color in ipairs(c.rainbow) do
    ret["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  return ret
end

return M
