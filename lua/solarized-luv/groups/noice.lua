local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    NoiceCmdlineIconInput          = { fg = c.cyan02 },
    NoiceCmdlineIconLua            = { fg = c.blue03 },
    NoiceCmdlinePopupBorderInput   = { fg = c.cyan02 },
    NoiceCmdlinePopupBorderLua     = { fg = c.blue03 },
    NoiceCmdlinePopupTitleInput    = { fg = c.cyan02 },
    NoiceCmdlinePopupTitleLua      = { fg = c.blue02 },
    NoiceCompletionItemKindDefault = { fg = c.surface02, bg = c.none },
    NoicePopupBorder               = { fg = c.yellow01, bg = c.bg_float }
  }
  require("solarized-luv.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
