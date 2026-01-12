local Util = require("solarized-luv.util")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  local dark = opts.styles.sidebars == "transparent" and c.none or Util.blend(c.bg_sidebar, 0.8, "#000000")
  -- stylua: ignore
  return {
    NeoTreeDimText             = { fg = c.surface00 },
    NeoTreeFileName            = { fg = c.fg_sidebar },
    NeoTreeGitModified         = { fg = c.orange02 },
    NeoTreeGitStaged           = { fg = c.green02 },
    NeoTreeGitUntracked        = { fg = c.magenta02 },
    NeoTreeNormal              = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC            = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeTabActive           = { fg = c.blue02, bg = c.base02, bold = true },
    NeoTreeTabInactive         = { fg = c.base03, bg = dark },
    NeoTreeTabSeparatorActive  = { fg = c.blue02, bg = c.base00 },
    NeoTreeTabSeparatorInactive= { fg = c.bg, bg = dark },
  }
end

return M
