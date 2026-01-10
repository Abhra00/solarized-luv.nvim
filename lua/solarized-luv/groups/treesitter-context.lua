local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

---@type solarized-luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    TreesitterContext = { bg = c.bg_highlight },
  }
end

return M
