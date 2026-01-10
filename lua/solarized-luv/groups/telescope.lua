local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    TelescopeBorder               = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal               = { fg = c.fg, bg = c.bg_float },
    TelescopeTitle                = { fg = c.float_title, bg = c.bg_float },
    TelescopeDirIcon              = { fg = c.blue03 },
    TelescopeResultsDiffAdd       = { fg = c.green03 },
    TelescopeResultsDiffChange    = { fg = c.yellow03 },
    TelescopeResultsDiffDelete    = { fg = c.red03 },
    TelescopeResultsDiffUntracked = { fg = c.orange03 },
  }
end

return M
