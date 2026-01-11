local M = {}

M.url = "https://github.com/echasnovski/mini.tabline"

---@type solarized_luv.HighlightsFn
function M.get(c, options)
  -- stylua: ignore
  return {
    MiniTablineCurrent         = { fg = c.violet02, bg = c.base03, bold = true },
    MiniTablineFill            = { bg = options.transparent and c.none or c.black},
    MiniTablineHidden          = { fg = c.fg, bg = c.bg_statusline },
    MiniTablineModifiedCurrent = { fg = c.yellow02, bg = c.yellow00, bold = true },
    MiniTablineModifiedHidden  = { fg = c.bg_statusline, bg = c.violet00 },
    MiniTablineModifiedVisible = { fg = c.bg_statusline, bg = c.fg },
    MiniTablineTabpagesection  = { bg = c.bg_statusline, fg = c.none },
    MiniTablineVisible         = { fg = c.fg, bg = c.bg_statusline },
  }
end

return M
