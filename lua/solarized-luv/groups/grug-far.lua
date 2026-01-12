local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    GrugFarHelpHeader             = { fg = c.base04 },
    GrugFarHelpHeaderKey          = { fg = c.cyan02 },
    GrugFarInputLabel             = { fg = c.blue02 },
    GrugFarInputPlaceholder       = { fg = c.base04 },
    GrugFarResultsChangeIndicator = { fg = c.git.change },
    GrugFarResultsHeader          = { fg = c.orange02 },
    GrugFarResultsLineColumn      = { fg = c.base04 },
    GrugFarResultsLineNo          = { fg = c.base04 },
    GrugFarResultsMatch           = { fg = c.black, bg = c.red02 },
    GrugFarResultsStats           = { fg = c.blue02 },
  }
end

return M
