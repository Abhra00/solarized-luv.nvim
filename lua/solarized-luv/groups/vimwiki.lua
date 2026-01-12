local M = {}

M.url = "https://github.com/gbprod/yanky.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    VimwikiLink = { fg = c.blue00, bg = c.none },
    VimwikiHeaderChar = { fg = c.yellow00, bg = c.none },
    VimwikiHR = { fg = c.yellow00, bg = c.none },
    VimwikiList = { fg = c.orange00, bg = c.none },
    VimwikiTag = { fg = c.green00, bg = c.none },
    VimwikiMarkers = { fg = c.blue00, bg = c.none },
  }
  for i, color in ipairs(c.rainbow) do
    ret["VimwikiHeader" .. i] = { fg = color, bg = c.none, bold = true }
  end
  return ret
end

return M
