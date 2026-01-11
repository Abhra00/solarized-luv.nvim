local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    TelescopeBorder               = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal               = { fg = c.fg, bg = c.bg_float },
    TelescopeTitle                = { fg = c.float_title, bg = c.bg_float },
    TelescopeDirIcon              = { fg = c.blue02 },
    TelescopeResultsDiffAdd       = { fg = c.git.add },
    TelescopeResultsDiffChange    = { fg = c.git.change },
    TelescopeResultsDiffDelete    = { fg = c.git.delete },
    TelescopeResultsDiffUntracked = { fg = c.git.ignore },
  }
end

return M
