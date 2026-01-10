local config = require("solarized-luv.config")
local M = {}

---@param opts? solarized-luv.Config
function M.load(opts)
  opts = require("solarized-luv.config").extend(opts)
  -- This theme is dark only
  vim.o.background = "dark"
  return require("solarized-luv.theme").setup(opts)
end

M.setup = config.setup

return M
