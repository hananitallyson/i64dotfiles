local Asimov = {}

function Asimov.setup()
    local palette = {
        black = "#0a0a0a",
        bg = "NONE",

        white = "#e8e8e8",
        silver = "#8fa99a",
        gray = "#52685b",

        green = "#4ebc77",
        mint = "#79d69a",
        dark_green = "#1f6b42",

        blue = "#5bb8d9",
        skyblue = "#6ac4df",

        pink = "#ef6b73",
        yellow = "#e7c765",
        orange = "#e09a55",

        surface = "NONE",
        cursor = "#181818",
        visual = "#263c31",
    }

    local function apply()
        local hl = vim.api.nvim_set_hl

        hl(0, "Normal", { fg = palette.white, bg = palette.surface })
        hl(0, "NormalNC", { fg = palette.white, bg = palette.surface })
        hl(0, "SignColumn", { fg = palette.white, bg = palette.surface })
        hl(0, "EndOfBuffer", { fg = palette.white, bg = palette.surface })

        hl(0, "CursorLine", { bg = palette.cursor })
        hl(0, "CursorColumn", { bg = "NONE" })
        hl(0, "Visual", { bg = palette.visual })

        hl(0, "Pmenu", { fg = palette.white, bg = palette.surface })
        hl(0, "PmenuSel", { fg = palette.white, bg = palette.dark_green })
        hl(0, "FloatBorder", { fg = palette.green, bg = palette.surface })
        hl(0, "NormalFloat", { fg = palette.white, bg = palette.surface })

        hl(0, "Comment", { fg = palette.silver })
        hl(0, "Keyword", { fg = palette.green, bold = true })
        hl(0, "Conditional", { fg = palette.green })
        hl(0, "Repeat", { fg = palette.green })
        hl(0, "Statement", { fg = palette.green })

        hl(0, "Function", { fg = palette.mint, bold = true })
        hl(0, "Identifier", { fg = palette.white })

        hl(0, "String", { fg = palette.green })
        hl(0, "Character", { fg = palette.green })

        hl(0, "Number", { fg = palette.pink })
        hl(0, "Float", { fg = palette.pink })

        hl(0, "Boolean", { fg = palette.yellow })
        hl(0, "Constant", { fg = palette.yellow })

        hl(0, "Type", { fg = palette.mint })
        hl(0, "StorageClass", { fg = palette.mint })
        hl(0, "Struct", { fg = palette.mint })

        hl(0, "Operator", { fg = palette.skyblue })
        hl(0, "PreProc", { fg = palette.blue })
        hl(0, "Macro", { fg = palette.blue })
        hl(0, "Include", { fg = palette.blue })

        hl(0, "Delimiter", { fg = palette.skyblue })
        hl(0, "Special", { fg = palette.skyblue })

        hl(0, "LspReferenceText", { bg = palette.visual })
        hl(0, "LspReferenceRead", { bg = palette.visual })
        hl(0, "LspReferenceWrite", { bg = palette.visual })
        hl(0, "LspCodeLens", { fg = palette.silver })

        hl(0, "DiagnosticError", { fg = palette.pink })
        hl(0, "DiagnosticWarn", { fg = palette.yellow })
        hl(0, "DiagnosticInfo", { fg = palette.skyblue })
        hl(0, "DiagnosticHint", { fg = palette.mint })

        hl(0, "TelescopeNormal", { link = "Normal" })
        hl(0, "TelescopeBorder", { link = "FloatBorder" })
        hl(0, "TelescopePromptNormal", { link = "Normal" })
        hl(0, "TelescopeResultsNormal", { link = "Normal" })
        hl(0, "TelescopePreviewNormal", { link = "Normal" })

        hl(0, "HarpoonBorder", { fg = palette.green, bg = palette.surface })
        hl(0, "HarpoonWindow", { fg = palette.white, bg = palette.surface })
        hl(0, "HarpoonNormal", { fg = palette.white, bg = palette.surface })

        hl(0, "OilDir", { fg = palette.green, bold = true })
        hl(0, "OilLink", { fg = palette.mint, bold = true })
        hl(0, "OilDirHidden", { fg = palette.gray, bold = true })
        hl(0, "OilFileHidden", { fg = palette.gray })

        hl(0, "WinBar", { fg = palette.green, bg = palette.surface, bold = true })
        hl(0, "WinBarNC", { fg = palette.silver, bg = palette.surface })
    end

    apply()
    vim.api.nvim_create_autocmd("ColorScheme", { callback = apply })
end

return Asimov

