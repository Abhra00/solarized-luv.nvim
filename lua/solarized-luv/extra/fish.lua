local util = require("solarized-luv.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local fishColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      fishColors[k] = v:gsub("^#", "")
    end
  end

  local fish = util.template(
    [[
# Solarized-luv color palette
set -l foreground ${fg}
set -l selection ${bg_visual}
set -l comment ${base04}
set -l red ${red03}
set -l orange ${orange03}
set -l yellow ${yellow03}
set -l green ${green03}
set -l baseblue ${blue02}
set -l blue ${blue03}
set -l pink ${magenta03}

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $baseblue
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_option $pink
set -g fish_color_error $red
set -g fish_color_param $blue
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $baseblue
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
]],
    fishColors
  )

  return fish
end

return M
