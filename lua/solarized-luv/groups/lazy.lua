local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, options)
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.magenta03 },
    LazyProgressTodo = { bold = true, fg = c.base03 },
  }
end

return M
