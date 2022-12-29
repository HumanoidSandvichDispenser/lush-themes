local lush = require("lush")
local hsl = lush.hsl

local bg0 = hsl("#282C34")
local bg1 = bg0.lighten(5)
local bg2 = bg1.lighten(5)
local bg3 = bg2.lighten(5)
local bg4 = bg3.lighten(5)
local gray = hsl("#5C6370")
local red = hsl("#E06C75")
local green = hsl("#98C379")
local yellow = hsl("#E5C07B")
local blue = hsl("#61AFEF")
local magenta = hsl("#C678DD")
local cyan = hsl("#56B6C2")
local orange = hsl("#D19A66")
local fg0 = hsl("#ABB2BF")
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

return lush.extends({ base }).with(function(inject)
    local sym = inject.sym
    return {
        texCmd { fg = cyan },

        texCmdItem { fg = magenta },

        Operator { fg = cyan },

        sym("@field"){ fg = red },
    }
end)
