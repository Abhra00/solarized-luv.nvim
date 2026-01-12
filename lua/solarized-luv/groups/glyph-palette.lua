local M = {}

M.url = "https://github.com/lambdalisue/glyph-palette.vim"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.red02 },
    GlyphPalette2 = { fg = c.green02 },
    GlyphPalette3 = { fg = c.yellow02 },
    GlyphPalette4 = { fg = c.blue02 },
    GlyphPalette6 = { fg = c.green02 },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.red01 },
  }
end

return M
