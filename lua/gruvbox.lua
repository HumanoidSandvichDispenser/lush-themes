local lush = require("lush")
local hsl = lush.hsl

local bg0 = hsl("#282828")
local bg1 = hsl("#3C3836")
local bg2 = hsl("#504945")
local bg3 = hsl("#665C54")
local bg4 = hsl("#7C6F64")
local gray = hsl("#928374")
local red = hsl("#FB4934")
local green = hsl("#B8BB26")
local yellow = hsl("#FABD2F")
local blue = hsl("#83A598")
local magenta = hsl("#D3869B")
local cyan = hsl("#8EC07C")
local orange = hsl("#FE8019")
local fg0 = hsl("#EBDBB2")
local fg1 = hsl("#D5C4A1")

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
    accent = green,
})

return lush.extends({ base }).with(function()
    return {
        Keyword { fg = red, gui = "bold" },

        Character { fg = magenta },
    }
end)
