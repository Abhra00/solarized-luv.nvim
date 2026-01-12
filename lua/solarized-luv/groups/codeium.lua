local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CodeiumSuggestion = { fg = c.base04 },
  }
  return ret
end

return M
