local M = {}

M.url = "https://github.com/echasnovski/mini.files"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniFilesBorder         = "FloatBorder",
    MiniFilesBorderModified = { fg = c.yellow02, bg = c.bg_float },
    MiniFilesCursorLine     = "CursorLine",
    MiniFilesDirectory      = "Directory",
    MiniFilesFile           = { fg = c.fg_float },
    MiniFilesNormal         = "NormalFloat",
    MiniFilesTitle          = { fg = c.fg_float, bg = c.bg_float },
    MiniFilesTitleFocused   = { fg = c.float_title, bg = c.bg_float, bold = true },
  }
end

return M
