local Util = require("solarized-luv.util")

local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey = { fg = c.magenta02, bold = true },
    HopNextKey1 = { fg = c.blue02, bold = true },
    HopNextKey2 = { fg = Util.blend_bg(c.blue02, 0.6) },
    HopUnmatched = { fg = c.base04 },
  }
end

return M
