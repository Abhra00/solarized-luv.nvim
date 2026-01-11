local M = {}

M.url = "https://github.com/echasnovski/mini.test"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.red02, bold = true },
    MiniTestPass = { fg = c.green02, bold = true },
  }
end

return M
