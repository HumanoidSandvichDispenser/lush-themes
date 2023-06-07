local lush = require("lush")
local hsl = lush.hsl

local bg0 = hsl("#1e1e2e")
local bg1 = hsl("#313244")
local bg2 = hsl("#45475a")
local bg3 = hsl("#585b70")
local bg4 = hsl("#6c7086")
local gray = hsl("#7f849c")
local red = hsl("#f38ba8")
local green = hsl("#a6e3a1")
local yellow = hsl("#f9e2af")
local blue = hsl("#89b4fa")
local magenta = hsl("#cba6f7")
local cyan = hsl("#89dceb")
local orange = hsl("#fab387")
local fg0 = hsl("#cdd6f4")
local fg1 = hsl("#a6adc8")

local base = require("base-theme")({
    bg0 = bg0,
    bg1 = bg1,
    bg2 = bg2,
    bg3 = bg3,
    bg4 = bg4,
    gray = gray,
    red = red,
    green = green,
    yellow = yellow,
    blue = blue,
    magenta = magenta,
    cyan = cyan,
    orange = orange,
    fg0 = fg0,
    fg1 = fg1,
    accent = yellow,
})

return lush.extends({ base }).with(function(inject)
    local sym = inject.sym
    return {
        texCmd { fg = cyan },

        texCmdItem { fg = magenta },

        Operator { fg = cyan },

        Keyword { fg = magenta, gui = "italic" },

        sym("@field"){ fg = red },

        sym("@type.builtin"){ fg = magenta },

        sym("@type.qualifier"){ fg = magenta },
    }
end)
