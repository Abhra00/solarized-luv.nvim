local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    AerialNormal = { fg = c.fg, bg = c.none },
    AerialGuide  = { fg = c.surface00 },
    AerialLine   = "LspInlayHint",
  }
  require("solarized-luv.groups.kinds").kinds(ret, "Aerial%sIcon")
  return ret
end

return M
