local M = {}

---@type solarized-luv.HighlightsFn
function M.get(c, options)
  -- stylua: ignore
  return {
    Comment                     = { fg = c.base04, style = options.styles.comments }, -- any comment
    Constant                    = { fg = c.cyan02 }, -- (preferred) any constant
    String                      = { fg = c.cyan02 }, --   a string constant: "this is a string"
    Character                   = "Constant", --  a character constant: 'c', '\n'
    Identifier                  = { fg = c.blue02, style = options.styles.variables }, -- (preferred) any variable name
    Function                    = { fg = c.blue02, style = options.styles.functions }, -- function name (also: methods for classes)
    Statement                   = { fg = c.green02 }, -- (preferred) any statement
    Operator                    = { fg = c.green02 }, -- "sizeof", "+", "*", etc.
    Keyword                     = { fg = c.green02, style = options.styles.keywords }, --  any other keyword
    PreProc                     = { fg = c.red02 }, -- (preferred) generic Preprocessor
    Type                        = { fg = c.yellow02 }, -- (preferred) int, long, char, etc.
    Special                     = { fg = c.orange02 }, -- (preferred) any special symbol
    Debug                       = { fg = c.orange02 }, --    debugging statements
    htmlH1                      = { fg = c.magenta02, bold = true },
    htmlH2                      = { fg = c.blue02, bold = true },
    mkdCode                     = { bg = c.green00 },
    mkdCodeDelimiter            = { fg = c.fg, bg = c.green01 },
    mkdCodeStart                = { fg = c.orange02, bold = true },
    mkdCodeEnd                  = { fg = c.orange02, bold = true },
    markdownHeadingDelimiter    = { fg = c.orange02, bold = true },
    markdownCode                = { fg = c.yellow02, bg = c.green00 },
    markdownCodeBlock           = { fg = c.yellow02, bg = c.green00 },
    markdownH1                  = { fg = c.magenta02, bold = true },
    markdownH2                  = { fg = c.violet02, bold = true },
    markdownLinkText            = { fg = c.blue02, underline = true },
  }
end

return M
