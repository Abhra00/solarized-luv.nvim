local M = {}

M.url = "https://github.com/echasnovski/mini.cursorword"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniCursorword        = { bg = c.magenta00 },
    MiniCursorwordCurrent = { bg = c.magenta00 },
  }
end

return M
