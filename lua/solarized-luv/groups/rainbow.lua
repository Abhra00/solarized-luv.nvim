local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- rainbow-delimiters
    RainbowDelimiterRed    = { fg = c.red02 },
    RainbowDelimiterOrange = { fg = c.orange02 },
    RainbowDelimiterYellow = { fg = c.yellow02 },
    RainbowDelimiterGreen  = { fg = c.green02 },
    RainbowDelimiterBlue   = { fg = c.blue02 },
    RainbowDelimiterViolet = { fg = c.violet02 },
    RainbowDelimiterCyan   = { fg = c.cyan02 },
  }
end

return M
