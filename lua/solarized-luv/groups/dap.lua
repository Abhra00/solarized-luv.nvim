local Util = require("solarized-luv.util")

local M = {}

M.url = "https://github.com/mfussenegger/nvim-dap"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    DapStoppedLine = { bg = c.red01 }, -- Used for "Warning" diagnostic virtual text
  }
end

return M
