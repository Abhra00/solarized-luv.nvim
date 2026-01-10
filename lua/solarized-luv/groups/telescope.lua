local M = {}

---@type solarized-luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    TelescopeBorder               = { fg = c.border, bg = c.bg_float },
    TelescopeNormal               = { fg = c.fg, bg = c.bg_float },
    TelescopeResultsDiffAdd       = { fg = c.green03 }
    TelescopeResultsDiffChange    = { fg = c.yellow03 }
    TelescopeResultsDiffDelete    = { fg = c.red03 }
    TelescopeResultsDiffUntracked = { fg = c.orange03 }
  }
end

return M
