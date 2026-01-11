local M = {}

M.url = "https://github.com/echasnovski/mini.jump"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniJump             = { bg = c.magenta03, fg = c.surface05 },
    MiniJump2dDim        = "Comment",
    MiniJump2dSpot       = { fg = c.magenta03, bold = true, nocombine = true },
    MiniJump2dSpotAhead  = { fg = c.hint, bg = c.bg_dark, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.orange03, bold = true, nocombine = true },
  }
end

return M
