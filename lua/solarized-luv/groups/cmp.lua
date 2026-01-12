local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText           = { fg = c.terminal.black },
    CmpItemAbbr            = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.surface00, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.orange02, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.orange02, bg = c.none },
    CmpItemKindCodeium     = { fg = c.blue02, bg = c.none },
    CmpItemKindCopilot     = { fg = c.blue02, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.blue02, bg = c.none },
    CmpItemKindDefault     = { fg = c.surface00, bg = c.none },
    CmpItemKindTabNine     = { fg = c.blue02, bg = c.none },
    CmpItemMenu            = { fg = c.base04, bg = c.none },
  }

  require("solarized-luv.groups.kinds").kinds(ret, "CmpItemKind%s")
  return ret
end

return M
