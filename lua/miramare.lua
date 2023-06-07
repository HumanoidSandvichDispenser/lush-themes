local lush = require("lush")
local hsl = lush.hsl

local bg0 = hsl("#2A2426")
local bg1 = bg0.lighten(5)
local bg2 = bg1.lighten(5)
local bg3 = bg2.lighten(5)
local bg4 = bg3.lighten(5)
local gray = bg4
local red = hsl("#e68183")
local green = hsl("#87af87")
local yellow = hsl("#d9bb80")
local blue = hsl("#89beba")
local magenta = hsl("#d3a0bc")
local cyan = hsl("#87c095")
local orange = hsl("#e39b7b")
local fg0 = hsl("#e6d6ac")
local fg1 = fg0.darken(5)

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
    accent = blue,
})

return lush.extends({ base }).with(function()
    return {
        Keyword { fg = red, gui = "italic" },

        Function { fg = cyan, gui = "bold" },

        Type { fg = orange },

        Character { fg = magenta },

        Operator { fg = orange },

        Accent { fg = cyan }
    }
end)
