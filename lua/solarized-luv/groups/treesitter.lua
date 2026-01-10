local M = {}

---@type solarized_luv.HighlightsFn
function M.get(c, options)
  -- stylua: ignore
  return {
    ["@annotation"]                   = "PreProc",
    ["@attribute"]                    = "PreProc",
    ["@boolean"]                      = "Boolean",
    ["@character"]                    = "Character",
    ["@character.special"]            = "SpecialChar",
    ["@comment"]                      = "Comment",
    ["@keyword.conditional"]          = "Conditional",
    ["@constant"]                     = "Constant",
    ["@constant.builtin"]             = "Special",
    ["@constant.macro"]               = "Define",
    ["@keyword.debug"]                = "Debug",
    ["@keyword.directive.define"]     = "Define",
    ["@keyword.exception"]            = "Exception",
    ["@number.float"]                 = "Float",
    ["@function"]                     = "Function",
    ["@function.builtin"]             = "Special",
    ["@function.call"]                = "@function",
    ["@function.macro"]               = "Macro",
    ["@keyword.import"]               = "Include",
    ["@keyword.coroutine"]            = "@keyword",
    ["@keyword.operator"]             = "@operator",
    ["@keyword.return"]               = "@keyword",
    ["@function.method"]              = "Function",
    ["@function.method.call"]         = "@function.method",
    ["@namespace.builtin"]            = "@variable.builtin",
    ["@none"]                         = {},
    ["@number"]                       = "Number",
    ["@keyword.directive"]            = "PreProc",
    ["@keyword.repeat"]               = "Repeat",
    ["@keyword.storage"]              = "StorageClass",
    ["@string"]                       = "String",
    ["@markup.link.label"]            = "SpecialChar",
    ["@markup.link.label.symbol"]     = "Identifier",
    ["@tag"]                          = "Label",
    ["@tag.attribute"]                = "@property",
    ["@tag.delimiter"]                = "Delimiter",
    ["@markup"]                       = "@none",
    ["@markup.environment"]           = "Macro",
    ["@markup.environment.name"]      = "Type",
    ["@markup.raw"]                   = "String",
    ["@markup.math"]                  = "Special",
    ["@markup.strong"]                = { bold = true },
    ["@markup.italic"]                = { italic = true },
    ["@markup.strikethrough"]         = { strikethrough = true },
    ["@markup.underline"]             = { underline = true },
    ["@markup.heading"]               = "Title",
    ["@comment.note"]                 = { fg = c.hint },
    ["@comment.error"]                = { fg = c.error },
    ["@comment.hint"]                 = { fg = c.hint },
    ["@comment.info"]                 = { fg = c.info },
    ["@comment.warning"]              = { fg = c.warning },
    ["@comment.todo"]                 = { fg = c.todo },
    ["@markup.link.url"]              = "Underlined",
    ["@type"]                         = "Type",
    ["@type.definition"]              = "Typedef",
    ["@type.qualifier"]               = "@keyword",

    -- Punctuation
    ["@punctuation.delimiter"]        = { fg = c.green02 }, -- For delimiters ie: `.`
    ["@punctuation.bracket"]          = { fg = c.orange02 }, -- For brackets and parens.
    ["@punctuation.special"]          = { fg = c.orange02 }, -- For special punctutation that does not fall in the catagories before.
    ["@punctuation.special.markdown"] = { fg = c.orange02, bold = true },
    ["@markup.list"]                  = { fg = c.blue02 }, -- For special punctutation that does not fall in the catagories before.
    ["@markup.list.markdown"]         = { fg = c.orange02, bold = true },

    -- Literals
    ["@string.documentation"]         = { fg = c.cyan02 },
    ["@string.regexp"]                = { fg = c.cyan03 }, -- For regexes.
    ["@string.escape"]                = { fg = c.orange01 }, -- For escape characters within a string.

    -- Functions
    ["@constructor"]                  = { fg = c.orange02 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@variable.parameter"]           = { fg = c.orange02 }, -- For parameters of a function.
    ["@variable.parameter.builtin"]   = { fg = c.yellow03 }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    -- Keywords
    ["@keyword"]                      = { fg = c.green02, style = options.styles.keywords }, -- For keywords that don't fall in previous categories.
    ["@keyword.function"]             = { fg = c.green02, style = options.styles.functions }, -- For keywords used to define a fuction.

    ["@label"]                        = { fg = c.green02 }, -- For labels: `label:` in C and `:label:` in Lua.

    -- Types
    ["@type.builtin"]                 = "Type",
    ["@variable.member"]              = { fg = c.cyan02 }, -- For fields.
    ["@property"]                     = "Identifier",

    -- Identifiers
    ["@variable"]                     = { fg = c.fg, style = options.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]             = { fg = c.orange02 }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@module.builtin"]               = { fg = c.orange02 }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- Text
    ["@markup.raw.markdown"]          = { fg = c.blue02 },
    ["@markup.raw.markdown_inline"]   = { fg = c.yellow02, bg = c.green00 },
    ["@markup.link"]                  = { fg = c.blue02, underline = true },

    ["@markup.list.unchecked"]        = { fg = c.yellow02 }, -- For brackets and parens.
    ["@markup.list.checked"]          = { fg = c.green02 }, -- For brackets and parens.

    ["@diff.plus"]                    = "DiffAdd",
    ["@diff.minus"]                   = "DiffDelete",
    ["@diff.delta"]                   = "DiffChange",

    ["@module"]                       = "Include",

    -- tsx
    ["@constructor.tsx"]              = { fg = c.blue02 },
    ["@tag.delimiter.tsx"]            = { fg = c.orange02 },
    ["@tag.tsx"]                      = { fg = c.yellow02 },
    ["@keyword.return.tsx"]           = { fg = c.green02, italic = true },
    ["@keyword.tsx"]                  = { fg = c.green02, italic = true },

    -- typescript
    ["@variable.typescript"]          = { fg = c.yellow02 },

    -- Vue
    ["@tag.delimiter.vue"]            = { fg = c.orange02 },

    -- html
    ["@tag.delimiter.html"]           = { fg = c.orange02 },

    -- javascriptreact
    ["@keyword.javascript"]           = { fg = c.green02, italic = true },
    ["@keyword.return.javascript"]    = { fg = c.green02, italic = true },
    ["@tag.delimiter.javascript"]     = { fg = c.orange02 },
    ["@tag.javascript"]               = { fg = c.yellow02 },
    ["@variable.javascript"]          = { fg = c.yellow02 },
  }
end

return M
