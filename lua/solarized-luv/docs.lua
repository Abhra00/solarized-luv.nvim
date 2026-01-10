local M = {}

local function link(name, url)
  return "[" .. name .. "](" .. url .. ")"
end

function M.row(t)
  return "| " .. table.concat(t, " | ") .. " |"
end

---@param t string[][]
function M.table(t)
  local header = table.remove(t, 1)
  local lines = {} ---@type string[]
  lines[#lines + 1] = M.row(header)
  lines[#lines + 1] = M.row({ "---", "---" })
  for _, row in ipairs(t) do
    lines[#lines + 1] = M.row(row)
  end
  return table.concat(lines, "\n")
end

function M.extras()
  local Extra = require("solarized-luv.extra")
  local names = vim.tbl_keys(Extra.extras) ---@type string[]
  table.sort(names)
  
  local t = {
    { "Tool", "Extra" },
  }
  
  for _, name in ipairs(names) do
    local info = Extra.extras[name]
    t[#t + 1] = { 
      link(info.label, info.url), 
      link("extras/" .. name, "extras/" .. name) 
    }
  end
  return M.table(t)
end

function M.plugins()
  local Groups = require("solarized-luv.groups")
  local t = {
    { "Plugin", "Source" },
  }
  local names = vim.tbl_values(Groups.plugins) ---@type string[]
  table.sort(names)
  for _, name in ipairs(names) do
    local group = Groups.get_group(name)
    local repo = group.url:match("[^/]*$")
    t[#t + 1] = {
      link(repo, group.url),
      link(('`%s`'):format(name), "lua/solarized-luv/groups/" .. name .. ".lua"),
    }
  end
  return M.table(t)
end

function M.write(file, content)
  local fd = io.open(file, "w+")
  if not fd then
    error("Could not open file " .. file .. " for writing")
  end
  fd:write(content)
  fd:close()
end

function M.update()
  -- Generate extras markdown
  local extras = M.extras()
  M.write("docs/EXTRAS.md", "# Extras\n\n" .. extras)
  print("✓ Generated docs/EXTRAS.md")
  -- Generate plugins markdown
  local plugins = M.plugins()
  M.write("docs/PLUGINS.md", "# Plugin Support\n\n" .. plugins)
  print("✓ Generated docs/PLUGINS.md")
  print("\nDocs updated!")
end

M.update()

return M
