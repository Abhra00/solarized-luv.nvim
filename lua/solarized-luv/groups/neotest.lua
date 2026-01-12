local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NeotestAdapterName  = { fg = c.violet02, bold = true },
    NeotestBorder       = { fg = c.blue02 },
    NeotestDir          = { fg = c.blue02 },
    NeotestExpandMarker = { fg = c.fg_sidebar },
    NeotestFailed       = { fg = c.red02 },
    NeotestFile         = { fg = c.cyan02 },
    NeotestFocused      = { fg = c.yellow02 },
    NeotestIndent       = { fg = c.fg_sidebar },
    NeotestMarked       = { fg = c.blue02 },
    NeotestNamespace    = { fg = c.green03 },
    NeotestPassed       = { fg = c.green02 },
    NeotestRunning      = { fg = c.yellow02 },
    NeotestSkipped      = { fg = c.blue02 },
    NeotestTarget       = { fg = c.blue02 },
    NeotestTest         = { fg = c.fg_sidebar },
    NeotestWinSelect    = { fg = c.blue02 },
  }
end

return M
