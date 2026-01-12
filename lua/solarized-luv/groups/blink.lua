local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    BlinkCmpDoc                 = { fg = c.fg, bg = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.surface00 },
    BlinkCmpKindCodeium         = { fg = c.blue02, bg = c.none },
    BlinkCmpKindCopilot         = { fg = c.blue02, bg = c.none },
    BlinkCmpKindDefault         = { fg = c.surface00, bg = c.none },
    BlinkCmpKindSupermaven      = { fg = c.blue02, bg = c.none },
    BlinkCmpKindTabNine         = { fg = c.blue02, bg = c.none },
    BlinkCmpLabel               = { fg = c.fg, bg = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.base02, bg = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.blue02, bg = c.none },
    BlinkCmpMenu                = { fg = c.fg, bg = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg, bg = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.border_highlight, bg = c.bg_float },
  }

  require("solarized-luv.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
