local Util = require("solarized-luv.util")

local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string, subdir?: string, sep?:string}>
M.extras = {
  fish             = { ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish" },
  ghostty          = { ext = "", url = "https://github.com/ghostty-org/ghostty", label = "Ghostty" },
}

function M.setup()
  local theme = require("solarized-luv.theme")
  vim.o.background = "dark"

  ---@type string[]
  local names = vim.tbl_keys(M.extras)
  table.sort(names)

  for _, extra in ipairs(names) do
    local info = M.extras[extra]
    local plugin = require("solarized-luv.extra." .. extra)

    -- Since solarized-luv has a single palette (no variants like storm/night/day)
    -- we just generate one theme file
    local colors = require("solarized-luv.colors").setup()
    local _, groups, opts = theme.setup({ plugins = { all = true } })

    local fname = extra
      .. (info.subdir and "/" .. info.subdir .. "/" or "")
      .. "/solarized-luv"
      .. (info.sep or "")
      .. "."
      .. info.ext
    fname = string.gsub(fname, "%.$", "") -- remove trailing dot when no extension

    colors["_upstream_url"] = "https://github.com/Abhra00/solarized-luv.nvim/raw/main/extras/" .. fname
    colors["_style_name"] = "Solarized Luv"
    colors["_name"] = "solarized-luv"

    print("[write] " .. fname)
    Util.write("extras/" .. fname, plugin.generate(colors, groups, opts))
  end
end

M.setup()

return M
