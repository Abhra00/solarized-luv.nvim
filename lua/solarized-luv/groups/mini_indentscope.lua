local M = {}

M.url = "https://github.com/echasnovski/mini.indentscope"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIndentscopeSymbol = { fg = c.cyan02, nocombine = true },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible
  }
end

return M
