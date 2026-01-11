local M = {}

M.url = "https://github.com/echasnovski/mini.trailspace"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTrailspace = { bg = c.red00, fg = c.red02 },
  }
end

return M
