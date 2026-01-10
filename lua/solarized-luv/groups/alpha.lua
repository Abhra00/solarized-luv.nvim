local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.orange02 },
    AlphaHeader      = { fg = c.cyan02 },
    AlphaHeaderLabel = { fg = c.orange02 },
    AlphaFooter      = { fg = c.yellow02 },
    AlphaButtons     = { fg = c.blue02 },
  }
end

return M
