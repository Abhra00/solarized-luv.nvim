local Util = require("solarized-luv.util")

local M = {}

M.url = "https://github.com/TimUntersberger/neogit"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = c.magenta02 },
    NeogitRemote               = { fg = c.violet02 },
    NeogitHunkHeader           = { bg = c.bg_highlight, fg = c.fg },
    NeogitHunkHeaderHighlight  = { bg = c.blue00, fg = c.blue02 },
    NeogitDiffContextHighlight = { bg = c.yellow00, fg = c.yellow02 },
    NeogitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },
  }
end

return M
