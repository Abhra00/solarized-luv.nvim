local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.yellow03 },
  }
end

return M
