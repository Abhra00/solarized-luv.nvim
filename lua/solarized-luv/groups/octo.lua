local Util = require("solarized-luv.util")

local M = {}

M.url = "https://github.com/pwntester/octo.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.blue02, bold = true },
    OctoDetailsValue          = "@variable.member",
    OctoDirty                 = { fg = c.orange02, bold = true },
    OctoIssueTitle            = { fg = c.violet02, bold = true },
    OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
    OctoStateClosed           = "DiagnosticVirtualTextError",
    OctoStateMerged           = { bg = c.magenta00, fg = c.magenta02 },
    OctoStateOpen             = "DiagnosticVirtualTextHint",
    OctoStatePending          = "DiagnosticVirtualTextWarn",
    OctoStatusColumn          = { fg = c.blue02 },

  }
end

return M
