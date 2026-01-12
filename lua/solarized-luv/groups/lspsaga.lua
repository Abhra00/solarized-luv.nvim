local M = {}

M.url = "https://github.com/glepnir/lspsaga.nvim"

---@type solarized_luv.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    DefinitionCount            = { fg = c.violet02 },
    DefinitionIcon             = { fg = c.blue02 },
    DiagnosticInformation      = "DiagnosticInfo",
    DiagnosticWarning          = "DiagnosticWarn",
    LspFloatWinBorder          = { fg = c.border_highlight },
    LspFloatWinNormal          = { bg = c.bg_float },
    LspSagaBorderTitle         = { fg = c.cyan02 },
    LspSagaCodeActionBorder    = { fg = c.blue02 },
    LspSagaCodeActionContent   = { fg = c.violet02 },
    LspSagaCodeActionTitle     = { fg = c.blue02 },
    LspSagaDefPreviewBorder    = { fg = c.green02 },
    LspSagaFinderSelection     = { fg = c.bg_visual },
    LspSagaHoverBorder         = { fg = c.blue02 },
    LspSagaRenameBorder        = { fg = c.green02 },
    LspSagaSignatureHelpBorder = { fg = c.red02 },
    ReferencesCount            = { fg = c.violet02 },
    ReferencesIcon             = { fg = c.blue02 },
    TargetWord                 = { fg = c.cyan02 },
  }
end

return M
