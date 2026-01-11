local M = {}

M.url = "https://github.com/echasnovski/mini.statusline"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniStatuslineDevinfo     = { fg = c.surface00, bg = c.bg_highlight },
    MiniStatuslineFileinfo    = { fg = c.surface00, bg = c.bg_highlight },
    MiniStatuslineFilename    = { fg = c.surface00, bg = c.bg_highlight },
    MiniStatuslineInactive    = { fg = c.blue02, bg = c.bg_statusline },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.yellow02, bold = true },
    MiniStatuslineModeInsert  = { fg = c.black, bg = c.green02, bold = true },
    MiniStatuslineModeNormal  = { fg = c.black, bg = c.blue02, bold = true },
    MiniStatuslineModeOther   = { fg = c.black, bg = c.cyan02, bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.red02, bold = true },
    MiniStatuslineModeVisual  = { fg = c.black, bg = c.magenta02, bold = true },
  }
end

return M
