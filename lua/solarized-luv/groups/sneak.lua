local M = {}

M.url = "https://github.com/justinmk/vim-sneak"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    Sneak      = { fg = c.violet02, bg = c.violet00 },
    SneakScope = { bg = c.bg_visual },
  }
end

return M
