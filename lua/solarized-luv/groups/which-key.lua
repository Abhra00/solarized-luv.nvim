local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.cyan02 },
    WhichKeyGroup     = { fg = c.blue02 },
    WhichKeyDesc      = { fg = c.magenta02 },
    WhichKeySeparator = { fg = c.base04 },
    WhichKeyNormal    = { bg = c.bg_sidebar },
    WhichKeyValue     = { fg = c.violet02 },
  }
end

return M
