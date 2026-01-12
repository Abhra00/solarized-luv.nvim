local M = {}

M.url = "https://github.com/echasnovski/mini.jump"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniJump             = { bg = c.magenta00, fg = c.magenta02 },
    MiniJump2dDim        = "Comment",
    MiniJump2dSpot       = { fg = c.magenta02, bold = true, nocombine = true },
    MiniJump2dSpotAhead  = { fg = c.hint, bg = c.base00, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.orange02, bold = true, nocombine = true },
  }
end

return M
