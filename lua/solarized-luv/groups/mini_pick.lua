local M = {}

M.url = "https://github.com/echasnovski/mini.pick"

---@type solarized_luv.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniPickBorder        = "FloatBorder",
    MiniPickBorderBusy    = { fg = c.yellow02, bg = c.bg_float },
    MiniPickBorderText    = { fg = c.hint, bg = c.bg_float },
    MiniPickIconDirectory = "Directory",
    MiniPickIconFile      = "MiniPickNormal",
    MiniPickHeader        = "DiagnosticFloatingHint",
    MiniPickMatchCurrent  = "CursorLine",
    MiniPickMatchMarked   = "Visual",
    MiniPickMatchRanges   = "DiagnosticFloatingHint",
    MiniPickNormal        = "NormalFloat",
    MiniPickPreviewLine   = "CursorLine",
    MiniPickPreviewRegion = "IncSearch",
    MiniPickPrompt        = { fg = c.info, bg = c.bg_float },
  }
end

return M
