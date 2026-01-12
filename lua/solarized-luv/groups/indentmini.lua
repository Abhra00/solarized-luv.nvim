local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.base03, nocombine = true },
    IndentLineCurrent          = { fg = c.cyan02, nocombine = true },
  }
end

return M
