local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.blue02 },
    DashboardFooter           = { fg = c.yellow02 },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.cyan02 },
    DashboardProjectTitleIcon = { fg = c.orange02 },
    DashboardProjectIcon      = { fg = c.yellow02 },
    DashboardMruTitle         = { fg = c.cyan02 },
    DashboardMruIcon          = { fg = c.violet02 },
    DashboardFiles            = { fg = c.blue02 },
    DashboardShortCutIcon     = { fg = c.magenta02 },
    -- Doome theme
    DashboardDesc             = { fg = c.cyan02 },
    DashboardKey              = { fg = c.orange02 },
    DashboardIcon             = { fg = c.cyan02 },
    DashboardShortCut         = { fg = c.cyan02 },
  }
end

return M
