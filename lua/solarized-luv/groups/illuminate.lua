local M = {}

M.url = "https://github.com/RRethy/vim-illuminate"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    IlluminatedWordRead  = { bg = c.surface00 },
    IlluminatedWordText  = { bg = c.surface00 },
    IlluminatedWordWrite = { bg = c.surface00 },
    illuminatedCurWord   = { bg = c.surface00 },
    illuminatedWord      = { bg = c.surface00 },
  }
end

return M
