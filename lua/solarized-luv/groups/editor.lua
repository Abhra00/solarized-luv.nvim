local Util = require("solarized-luv.util")

local M = {}

---@type solarized_luv.HighlightsFn
function M.get(c, options)
  -- stylua: ignore
  return {
    -- standard
    ColorColumn                 = { bg = c.base02 }, -- used for the columns set with 'colorcolumn'
    Conceal                     = { fg = c.blue02 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                      = { fg = c.base01, bg = c.fg }, -- character under the cursor
    lCursor                     = { fg = c.base01, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM                    = { fg = c.base01, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn                = { bg = c.base02 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                  = { bg = c.base02, sp = c.surface02 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                   = { fg = c.blue02 }, -- directory names (and other special names in listings)
    DiffAdd                     = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange                  = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete                  = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText                    = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer                 = { fg = c.base04 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg                    = { fg = c.red02, reverse = true }, -- error messages on the command line
    VertSplit                   = { fg = c.surface00 }, -- the column separating vertically split windows
    WinSeparator                = { fg = c.base02, bold = true }, -- the column separating vertically split windows
    Folded                      = { fg = c.fg, bg = c.base02, bold = true }, -- line used for closed folds
    FoldColumn                  = { fg = c.fg }, -- 'foldcolumn'
    SignColumn                  = { fg = c.fg }, -- column where |signs| are displayed
    SignColumnSB                = { fg = c.fg }, -- column where |signs| are displayed
    Substitute                  = { fg = c.base00, bg = c.red02 }, -- |:substitute| replacement text highlighting
    LineNr                      = { fg = c.yellow01 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr                = { fg = c.orange02, sp = c.surface02 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen                  = { fg = c.red04, bg = c.red02, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                     = { fg = c.blue02 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea                     = { fg = c.base04 }, -- Area for messages and cmdline
    MoreMsg                     = { fg = c.blue02 }, -- |more-prompt|
    NonText                     = { fg = c.surface00, bold = true }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                      = { fg = c.fg, bg = options.transparent and c.none or c.bg }, -- normal text
    NormalNC                    = { fg = c.surface00, bg = options.transparent and c.none or options.dim_inactive and c.base00 or c.bg }, -- normal text in non-current windows
    NormalSB                    = { fg = c.base04, bg = c.bg_sidebar }, -- normal text in sidebar
    NormalFloat                 = { fg = c.fg, bg = c.bg_float }, -- Normal text in floating windows.
    FloatBorder                 = { fg = c.border_highlight, bg = c.bg_float },
    FloatTitle                  = { fg = c.float_title, bg = c.bg_float },
    Pmenu                       = { fg = c.fg, bg = c.base02 }, -- Popup menu: normal item.
    PmenuSel                    = { fg = c.base04, bg = c.surface03, reverse = true }, -- Popup menu: selected item.
    PmenuSbar                   = { fg = c.base02, reverse = true }, -- Popup menu: scrollbar.
    PmenuThumb                  = { fg = c.fg, reverse = true }, -- Popup menu: Thumb of the scrollbar.
    Question                    = { fg = c.cyan02, bold = true }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine                = { bg = c.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search                      = { fg = c.yellow03, bg = c.bg_search }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch                   = { fg = c.orange03, bg = c.orange00 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch                   = "IncSearch",
    SpecialKey                  = { fg = c.surface00 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad                    = { sp = c.red02, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                    = { sp = c.violet02, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                  = { sp = c.cyan02, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                   = { sp = c.yellow02, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine                  = { fg = c.surface01, bg = c.bg_statusline }, -- status line of current window
    StatusLineNC                = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine                     = { fg = c.fg, bg = c.bg_statusline }, -- tab pages line, not active tab page label
    TabLineFill                 = { fg = c.fg, bg = options.transparent and c.none or c.base02 }, -- tab pages line, where there are no labels
    TabLineSel                  = { fg = c.yellow02, bg = c.bg }, -- tab pages line, active tab page label
    Title                       = { fg = c.orange02, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual                      = { bg = c.bg_visual }, -- Visual mode selection
    VisualNOS                   = { bg = c.bg_visual, reverse = true }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                  = { fg = c.orange02, bold = true }, -- warning messages
    Whitespace                  = { fg = c.base04 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu                    = { fg = c.bg_visual, bg = c.base02, reverse = true }, -- current match in 'wildmenu' completion
    WinBar                      = "StatusLine", -- window bar
    WinBarNC                    = "StatusLineNC", -- window bar in inactive windows

    -- documentation.
    LspReferenceText            = { bg = c.magenta00 }, -- used for highlighting "text" references
    LspReferenceRead            = { bg = c.magenta00 }, -- used for highlighting "read" references
    LspReferenceWrite           = { bg = c.magenta00 }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { bg = c.violet00, bold = true },
    LspCodeLens                 = { fg = c.base04 },
    LspInlayHint                = { bg = c.violet00, fg = c.violet02 },
    LspInfoBorder               = { fg = c.border_highlight, bg = c.bg_float },

    -- diagnostics
    DiagnosticError             = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn              = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo              = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint              = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnnecessary       = { fg = c.surface00 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError  = { bg = c.red00, fg = c.red02 }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn   = { bg = c.yellow00, fg = c.yellow02 }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo   = { bg = c.blue00, fg = c.blue02 }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint   = { bg = c.cyan00, fg = c.cyan02 }, -- Used for "Hint" diagnostic virtual text
    DiagnosticUnderlineError    = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn     = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo     = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint     = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

    -- health
    healthError                 = { fg = c.error },
    healthSuccess               = { fg = c.cyan02 },
    healthWarning               = { fg = c.warning },

    -- diff
    diffAdded                   = { bg = c.diff.add, fg = c.git.add },
    diffRemoved                 = { bg = c.diff.delete, fg = c.git.delete },
    diffChanged                 = { bg = c.diff.change, fg = c.git.change },
    diffOldFile                 = { fg = c.red02, bg = c.git.delete },
    diffNewFile                 = { fg = c.green02, bg = c.git.add },
    diffFile                    = { fg = c.blue02 },
    diffLine                    = { fg = c.base03 },
    diffIndexLine               = { fg = c.magenta02 },
    helpExample                 = { fg = c.base03 },
  }
end

return M
