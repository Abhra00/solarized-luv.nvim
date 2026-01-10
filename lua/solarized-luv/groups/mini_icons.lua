local M = {}

M.url = "https://github.com/echasnovski/mini.icons"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniIconsAzure  = { fg = c.blue02 },
    MiniIconsBlue   = { fg = c.blue03 },
    MiniIconsCyan   = { fg = c.cyan02 },
    MiniIconsGreen  = { fg = c.green02 },
    MiniIconsGrey   = { fg = c.fg },
    MiniIconsOrange = { fg = c.orange02 },
    MiniIconsPurple = { fg = c.violet02 },
    MiniIconsRed    = { fg = c.red02 },
    MiniIconsYellow = { fg = c.yellow02 },
  }
end

return M
