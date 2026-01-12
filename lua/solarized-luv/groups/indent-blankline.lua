local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentBlanklineChar        = { fg = c.base03, nocombine = true },
    IndentBlanklineContextChar = { fg = c.cyan02, nocombine = true },
    IblIndent                  = { fg = c.base03, nocombine = true },
    IblScope                   = { fg = c.cyan02, nocombine = true },
  }
end

return M
