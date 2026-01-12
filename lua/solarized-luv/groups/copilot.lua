local M = {}

M.url = "https://github.com/zbirenbaum/copilot.lua"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CopilotAnnotation = { fg = c.base04 },
    CopilotSuggestion = { fg = c.base04 },
  }
  return ret
end

return M
