local M = {}

M.url = "https://github.com/supermaven-inc/supermaven-nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SupermavenSuggestion = { fg = c.terminal.black },
  }
  return ret
end

return M
