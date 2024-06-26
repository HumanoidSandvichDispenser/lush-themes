local lush = require("lush")
local hsl = lush.hsl

local bg0 = hsl("#1A1B26")
local bg1 = bg0.lighten(5)
local bg2 = bg1.lighten(5)
local bg3 = bg2.lighten(5)
local bg4 = bg3.lighten(5)
local gray = hsl("#4E5173")
local red = hsl("#F7768E")
local green = hsl("#9ECE6A")
local yellow = hsl("#E0AF68")
local blue = hsl("#7AA2F7")
local magenta = hsl("#9a7ecc")
local cyan = hsl("#4abaaf")
local fg0 = hsl("#acb0d0")
local fg1 = fg0.darken(5)
local orange = hsl("#ff9e64")

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
    accent = magenta,
})

return lush.extends({ base }).with(function()
    return {
        Keyword { fg = magenta },

        String { fg = yellow },

        Constant { fg = red },

        Accent { fg = magenta },

        Function { fg = blue },

        Special { fg = gray },

        SpecialChar { fg = magenta },

        Type { fg = cyan },

        Operator { fg = cyan },

        DiffAdd { fg = cyan },

        NeogitDiffAdd {
            fg = DiffAdd.fg.desaturate(50).darken(25),
            bg = DiffAdd.fg.desaturate(75).darken(75)
        },

        NeogitDiffAddHighlight {
            fg = DiffAdd.fg,
            bg = DiffAdd.fg.desaturate(75).darken(70)
        },

        NeogitDiffAddCursor {
            fg = DiffAdd.fg,
            bg = DiffAdd.fg.desaturate(75).darken(75)
        },
    }
end)
