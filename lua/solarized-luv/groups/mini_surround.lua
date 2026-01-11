local M = {}

M.url = "https://github.com/echasnovski/mini.surround"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniSurround = { bg = c.orange02, fg = c.black },
  }
end

return M
