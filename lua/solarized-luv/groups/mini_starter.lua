local M = {}

M.url = "https://github.com/echasnovski/mini.starter"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = c.yellow02, italic = true },
    MiniStarterHeader     = { fg = c.blue02 },
    MiniStarterInactive   = { fg = c.base04, style = opts.styles.comments },
    MiniStarterItem       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    MiniStarterItemBullet = { fg = c.cyan02 },
    MiniStarterItemPrefix = { fg = c.orange02 },
    MiniStarterQuery      = { fg = c.info },
    MiniStarterSection    = { fg = c.blue02 },
  }
end

return M
