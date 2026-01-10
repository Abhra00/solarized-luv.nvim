local Util = require("solarized-luv.util")

local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NotifyBackground  = { fg = c.fg, bg = c.bg },
    --- Border
    NotifyERRORBorder = { fg = Util.blend_bg(c.error, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyWARNBorder  = { fg = Util.blend_bg(c.warning, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyINFOBorder  = { fg = Util.blend_bg(c.info, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyDEBUGBorder = { fg = Util.blend_bg(c.base04, 0.3), bg = opts.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = Util.blend_bg(c.violet02, 0.3), bg = opts.transparent and c.none or c.bg },
    --- Icons
    NotifyERRORIcon   = { fg = c.error },
    NotifyWARNIcon    = { fg = c.warning },
    NotifyINFOIcon    = { fg = c.info },
    NotifyDEBUGIcon   = { fg = c.base04 },
    NotifyTRACEIcon   = { fg = c.violet02 },
    --- Title
    NotifyERRORTitle  = { fg = c.error },
    NotifyWARNTitle   = { fg = c.warning },
    NotifyINFOTitle   = { fg = c.info },
    NotifyDEBUGTitle  = { fg = c.base04 },
    NotifyTRACETitle  = { fg = c.violet02 },
    --- Body
    NotifyERRORBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyWARNBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyINFOBody    = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyDEBUGBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    NotifyTRACEBody   = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
  }
end

return M
