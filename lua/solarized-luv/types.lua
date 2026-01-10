---@class solarized_luv.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias solarized_luv.Highlights table<string,solarized_luv.Highlight|string>

---@alias solarized_luv.HighlightsFn fun(colors: ColorScheme, opts:solarized_luv.Config):solarized_luv.Highlights

---@class solarized_luv.Cache
---@field groups solarized_luv.Highlights
---@field inputs table
