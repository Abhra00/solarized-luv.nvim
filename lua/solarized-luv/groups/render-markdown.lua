local Util = require("solarized-luv.util")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    RenderMarkdownBullet    = {fg = c.orange02}, -- horizontal rule
    RenderMarkdownCode      = { bg = c.base00 },
    RenderMarkdownDash      = {fg = c.orange02}, -- horizontal rule
    RenderMarkdownTableHead = { fg = c.orange02},
    RenderMarkdownTableRow  = { fg = c.orange02},
    RenderMarkdownCodeInline = "@markup.raw.markdown_inline"
  }
  for i, color in ipairs(c.rainbow) do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(color, 0.1) }
    ret["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end
  return ret
end

return M
