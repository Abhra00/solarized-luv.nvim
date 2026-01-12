local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.base04 },
    FlashLabel    = { bg = c.magenta00, bold = true, fg = c.magenta02 },
  }
end

return M
