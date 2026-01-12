local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LeapMatch          = { bg = c.magenta00, fg = c.magenta02, bold = true },
    LeapLabel          = { fg = c.magenta02, bold = true },
    LeapBackdrop       = { fg = c.base02 },
  }
end

return M
