-- This file provides a base theme for other themes to implement from. Now
-- there aren't any problems about colorschemes defining too many highlights.

local lush = require("lush")
return function (colors)
    return lush(function(inject)
        local sym = inject.sym
        return {
            Accent { fg = colors.accent },

            --Error { fg = colors.bg0, bg = colors.red },

            Title { Accent },

            Underlined { Title, gui = "underline" },

            Normal { bg = colors.bg0, fg = colors.fg0 },

            NormalFloat { Normal },

            Error { Normal, fg = colors.red, gui = "bold" },

            Directory { Normal, fg = colors.blue },

            MoreMsg { Directory },

            IncSearch { bg = colors.orange, fg = colors.bg0 },

            Search { bg = colors.yellow, fg = colors.bg0 },

            DiffAdd { fg = colors.green },

            DiffDelete { fg = colors.red },

            DiffChange { fg = colors.blue },

            SignColumn { },

            Comment { gui = "italic", fg = colors.gray },

            Gray { fg = colors.gray },

            Conceal { Gray },

            SpecialComment { Comment },

            StatusLine { bg = colors.bg0, fg = colors.bg1 },

            StatusLineNC { bg = colors.bg0, fg = colors.bg1 },

            CursorLine { bg = colors.bg1 },

            Visual { bg = colors.bg2 },

            MatchParen { Visual },

            LineNr { fg = colors.bg4 },

            VertSplit { fg = colors.bg2 },

            FloatBorder { VertSplit },

            EndOfBuffer { VertSplit },

            NonText { VertSplit },

            CursorLineNr { fg = colors.fg0 },

            Todo { fg = colors.red, gui = "italic" },

            Identifier { fg = colors.fg0 },

            sym("@parameter") { fg = colors.orange },

            sym("@field") { fg = colors.blue },

            sym("@property") { sym("@field") },

            String { fg = colors.green },

            Constant { fg = colors.cyan },

            Character { fg = colors.orange },

            Number { Character },

            Boolean { Character },

            Keyword { fg = colors.magenta, gui = "bold" },

            Macro { Keyword },

            Conditional { Keyword },

            Repeat { Keyword },

            Label { Keyword },

            Statement { Keyword },

            PreProc { Keyword },

            Special { fg = colors.yellow },

            SpecialChar { fg = colors.yellow },

            Delimiter { fg = colors.fg1 },

            Operator { Delimiter },

            Function { fg = colors.blue },

            Type { fg = colors.yellow },

            Structure { Type },

            StorageClass { Type },

            Debug { fg = colors.yellow },

            Pmenu { bg = colors.bg1 },

            PmenuSel { bg = colors.bg3, fg = colors.fg0 },

            CmpItemAbbrMatch { Pmenu, fg = colors.accent, gui = "bold" },

            DiagnosticError { fg = colors.red },

            DiagnosticHint { fg = colors.magenta },

            DiagnosticInformation { fg = colors.cyan },

            DiagnosticWarning { fg = colors.yellow },

            DiagnosticUnderlineError { gui = "undercurl" },

            DiagnosticUnderlineHint { gui = "undercurl" },

            DiagnosticUnderlineInformation { gui = "undercurl" },

            DiagnosticUnderlineWarning { gui = "undercurl" },

            FelineNormalMode { bg = colors.fg0, fg = colors.bg0 },

            FelineInsertMode { FelineNormalMode, bg = colors.green },

            FelineVisualMode { FelineNormalMode, bg = colors.blue },

            FelineSelectMode { FelineNormalMode, bg = colors.cyan },

            FelineReplaceMode { FelineNormalMode, bg = colors.magenta },

            FelineCommandMode { FelineNormalMode, bg = colors.magenta },

            FelineError { fg = colors.red, bg = colors.bg0 },

            FelineWarning { fg = colors.yellow, bg = colors.bg0 },

            FelineDefault { Normal, fg = colors.gray },

            TSTagAttribute { gui = "bold" },

            TSConstBuiltin { Constant },

            TSVariableBuiltin { Constant },

            TSFuncBuiltin { Constant },

            commentTSConstant { Identifier, gui = "bold" },

            BufferCurrent { Normal, bg = colors.bg1 },

            BufferCurrentSign { BufferCurrent },

            BufferVisible { Normal },

            BufferCurrentMod { BufferCurrent, fg = colors.red, gui = "italic" },

            BufferVisibleMod { fg = colors.red, gui = "italic" },

            BufferVisibleTarget { fg = colors.red, gui = "italic" },

            BufferInactive { fg = colors.gray },

            BufferInactiveMod { BufferVisibleMod },

            texEnvArgName { Type },

            Folded { fg = colors.gray, bg = colors.bg2 },

            FoldColumn { fg = colors.gray, bg = colors.bg0 },

            sym("@variable") { fg = colors.fg0 },

            sym("@variable.fennel") { fg = colors.fg0 },

            sym("@variable.member.fennel") { fg = colors.fg0 },

            sym("@tag") { Function },

            sym("@tag.attribute") { Constant },

            sym("@type.qualifier") { Keyword },

            sym("@type.builtin") { Keyword },

            sym("@variable.builtin") { Constant },

            sym("@constructor") { Type },

            RainbowDelimiterFirst { fg = colors.blue },

            RainbowDelimiterSecond { fg = colors.magenta },

            RainbowDelimiterThird { fg = colors.green },

            NeogitSectionHeader { fg = colors.accent, gui = "bold" },

            NeogitHunkHeader { bg = colors.bg3 },

            NeogitHunkHeaderCursor { fg = colors.bg0, bg = NeogitSectionHeader.fg },

            NeogitHunkHeaderHighlight { fg = colors.bg0, bg = NeogitSectionHeader.fg },

            NeogitDiffContextHighlight { bg = colors.bg0.darken(5) },

            NeogitDiffContextCursor { },

            NeogitChangeModified { NeogitSectionHeader },

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

            NeogitDiffDelete {
                fg = DiffDelete.fg.desaturate(50).darken(25),
                bg = DiffDelete.fg.desaturate(75).darken(75)
            },

            NeogitDiffDeleteHighlight {
                fg = DiffDelete.fg,
                bg = DiffDelete.fg.desaturate(75).darken(70)
            },

            NeogitDiffDeleteCursor {
                fg = DiffDelete.fg,
                bg = DiffDelete.fg.desaturate(75).darken(75)
            },
        }
    end)
end
