local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TroubleText   = { fg = c.surface00 },
    TroubleCount  = { fg = c.blue03, bg = c.blue00 },
    TroubleNormal = { fg = c.fg, bg = c.bg_sidebar },
  }
end

return M
