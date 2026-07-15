vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "asimov"

local none = "NONE"

local c = {
  bg          = none,
  alt_bg      = "#101010",
  fg          = "#d7dae0",
  red         = "#ff5f70",
  dark_red    = "#ff3b5c",
  green       = "#5fdb7a",
  yellow      = "#ffcb52",
  dark_yellow = "#ffa146",
  blue        = "#3fbfff",
  purple      = "#d573ff",
  cyan        = "#3ce0d0",
  white       = "#e6e9f0",
  black       = "#282c34",
  grey        = "#6c7280",
  light_grey  = "#98a1b3",
  visual_grey = "#101010",
  cursor_grey = "#2c323c",
  menu_grey   = "#3e4452",
  special_grey= "#3b4048",
  vertsplit   = "#3e4452",
  folder_green= "#4ebc77",
}

local function hi(group, opts)
  opts.bg = opts.bg or c.bg
  vim.api.nvim_set_hl(0, group, opts)
end

hi("Normal",        { fg = c.fg })
hi("NormalFloat",   { fg = c.fg })
hi("NormalNC",      { fg = c.fg })
hi("FloatBorder",   { fg = c.grey })
hi("FloatTitle",    { fg = c.blue, bold = true })
hi("EndOfBuffer",   { fg = c.bg })
hi("Terminal",      { fg = c.fg })

hi("Cursor",        { fg = c.black, bg = c.fg })
hi("CursorLine",    { bg = c.bg })
hi("CursorLineNr",  { fg = c.white, bold = true })
hi("CursorColumn",  { bg = c.bg })
hi("ColorColumn",   { bg = c.bg })

hi("LineNr",        { fg = c.grey })
hi("SignColumn",    { fg = c.fg })
hi("FoldColumn",    { fg = c.fg })
hi("Folded",         { fg = c.grey, italic = true })

hi("VertSplit",      { fg = c.vertsplit })
hi("WinSeparator",   { fg = c.vertsplit })

hi("Pmenu",           { fg = c.fg })
hi("PmenuSel",        { fg = c.black, bg = c.blue })
hi("PmenuSbar",       { bg = c.bg })
hi("PmenuThumb",      { bg = c.grey })
hi("WildMenu",        { fg = c.black, bg = c.blue })

hi("StatusLine",      { fg = c.fg })
hi("StatusLineNC",    { fg = c.grey })
hi("TabLine",         { fg = c.grey })
hi("TabLineFill",     { fg = c.grey })
hi("TabLineSel",      { fg = c.white, bold = true })

hi("Visual",          { bg = c.visual_grey })
hi("VisualNOS",       { bg = c.visual_grey })
hi("Search",          { fg = c.black, bg = c.yellow })
hi("IncSearch",       { fg = c.black, bg = c.dark_yellow })
hi("CurSearch",       { fg = c.black, bg = c.dark_yellow })

hi("MatchParen",      { fg = c.blue, bold = true })
hi("Directory",       { fg = c.folder_green })
hi("Title",           { fg = c.green, bold = true })

hi("ErrorMsg",        { fg = c.red, bold = true })
hi("WarningMsg",       { fg = c.yellow, bold = true })
hi("MoreMsg",          { fg = c.blue })
hi("Question",         { fg = c.blue })
hi("ModeMsg",          { fg = c.fg })

hi("NonText",          { fg = c.grey })
hi("SpecialKey",       { fg = c.grey })
hi("Whitespace",       { fg = c.grey })
hi("Conceal",          { fg = c.grey })

hi("Substitute",       { fg = c.black, bg = c.yellow })
hi("QuickFixLine",     { bg = c.visual_grey })

hi("SpellBad",    { sp = c.red,    undercurl = true })
hi("SpellCap",    { sp = c.yellow, undercurl = true })
hi("SpellLocal",  { sp = c.blue,   undercurl = true })
hi("SpellRare",   { sp = c.purple, undercurl = true })

hi("DiffAdd",     { fg = c.green })
hi("DiffChange",  { fg = c.yellow })
hi("DiffDelete",  { fg = c.red })
hi("DiffText",    { fg = c.blue })

hi("Comment",       { fg = c.grey, italic = true })

hi("Constant",      { fg = c.dark_yellow })
hi("String",        { fg = c.green })
hi("Character",     { fg = c.green })
hi("Number",        { fg = c.dark_yellow })
hi("Boolean",       { fg = c.dark_yellow })
hi("Float",         { fg = c.dark_yellow })

hi("Identifier",    { fg = c.red })
hi("Function",      { fg = c.blue })

hi("Statement",     { fg = c.purple })
hi("Conditional",   { fg = c.purple })
hi("Repeat",        { fg = c.purple })
hi("Label",         { fg = c.purple })
hi("Operator",      { fg = c.fg })
hi("Keyword",       { fg = c.purple })
hi("Exception",     { fg = c.purple })

hi("PreProc",       { fg = c.yellow })
hi("Include",       { fg = c.purple })
hi("Define",        { fg = c.purple })
hi("Macro",         { fg = c.purple })
hi("PreCondit",     { fg = c.yellow })

hi("Type",          { fg = c.yellow })
hi("StorageClass",  { fg = c.yellow })
hi("Structure",     { fg = c.yellow })
hi("Typedef",       { fg = c.yellow })

hi("Special",       { fg = c.blue })
hi("SpecialChar",   { fg = c.dark_red })
hi("Tag",           { fg = c.red })
hi("Delimiter",     { fg = c.light_grey })
hi("SpecialComment",{ fg = c.grey })
hi("Debug",         { fg = c.red })

hi("Underlined",    { fg = c.blue, underline = true })
hi("Ignore",        { fg = c.grey })
hi("Error",         { fg = c.red })
hi("Todo",          { fg = c.purple, bold = true })

hi("DiagnosticError", { fg = c.red })
hi("DiagnosticWarn",  { fg = c.yellow })
hi("DiagnosticInfo",  { fg = c.blue })
hi("DiagnosticHint",  { fg = c.cyan })
hi("DiagnosticOk",    { fg = c.green })

hi("DiagnosticUnderlineError", { sp = c.red,    undercurl = true })
hi("DiagnosticUnderlineWarn",  { sp = c.yellow, undercurl = true })
hi("DiagnosticUnderlineInfo",  { sp = c.blue,   undercurl = true })
hi("DiagnosticUnderlineHint",  { sp = c.cyan,   undercurl = true })

hi("DiagnosticVirtualTextError", { fg = c.red })
hi("DiagnosticVirtualTextWarn",  { fg = c.yellow })
hi("DiagnosticVirtualTextInfo",  { fg = c.blue })
hi("DiagnosticVirtualTextHint",  { fg = c.cyan })

hi("LspReferenceText",  { bg = c.visual_grey })
hi("LspReferenceRead",  { bg = c.visual_grey })
hi("LspReferenceWrite", { bg = c.visual_grey })
hi("LspCodeLens",       { fg = c.grey })
hi("LspInlayHint",      { fg = c.grey, italic = true })

hi("@variable",              { fg = c.fg })
hi("@variable.builtin",      { fg = c.red })
hi("@variable.parameter",    { fg = c.red })
hi("@variable.member",       { fg = c.red })

hi("@constant",               { fg = c.dark_yellow })
hi("@constant.builtin",       { fg = c.dark_yellow })
hi("@constant.macro",         { fg = c.dark_yellow })

hi("@module",                 { fg = c.yellow })
hi("@label",                  { fg = c.purple })

hi("@string",                 { fg = c.green })
hi("@string.escape",          { fg = c.dark_red })
hi("@string.special",         { fg = c.dark_red })
hi("@character",              { fg = c.green })
hi("@character.special",      { fg = c.dark_red })

hi("@number",                 { fg = c.dark_yellow })
hi("@boolean",                { fg = c.dark_yellow })
hi("@float",                  { fg = c.dark_yellow })

hi("@function",                { fg = c.blue })
hi("@function.builtin",        { fg = c.cyan })
hi("@function.macro",          { fg = c.blue })
hi("@function.method",         { fg = c.blue })
hi("@constructor",             { fg = c.yellow })
hi("@parameter",               { fg = c.red })

hi("@keyword",                 { fg = c.purple, italic = true })
hi("@keyword.function",        { fg = c.purple, italic = true })
hi("@keyword.operator",        { fg = c.purple })
hi("@keyword.return",          { fg = c.purple, italic = true })
hi("@conditional",             { fg = c.purple })
hi("@repeat",                  { fg = c.purple })
hi("@exception",               { fg = c.purple })

hi("@type",                    { fg = c.yellow })
hi("@type.builtin",            { fg = c.yellow })
hi("@attribute",               { fg = c.yellow })
hi("@property",                { fg = c.red })

hi("@punctuation.delimiter",   { fg = c.light_grey })
hi("@punctuation.bracket",     { fg = c.fg })
hi("@punctuation.special",     { fg = c.blue })

hi("@comment",                 { fg = c.grey, italic = true })
hi("@comment.documentation",   { fg = c.grey, italic = true })
hi("@tag",                     { fg = c.red })
hi("@tag.attribute",           { fg = c.dark_yellow })
hi("@tag.delimiter",           { fg = c.light_grey })

hi("@markup.heading",          { fg = c.blue, bold = true })
hi("@markup.strong",           { bold = true })
hi("@markup.italic",           { italic = true })
hi("@markup.link",             { fg = c.cyan, underline = true })

hi("GitSignsAdd",    { fg = c.green })
hi("GitSignsChange", { fg = c.yellow })
hi("GitSignsDelete", { fg = c.red })
hi("gitcommitSummary", { fg = c.yellow })

hi("TelescopeBorder",        { fg = c.grey })
hi("TelescopePromptBorder",  { fg = c.grey })
hi("TelescopeResultsBorder", { fg = c.grey })
hi("TelescopePreviewBorder", { fg = c.grey })
hi("TelescopeSelection",     { bg = c.visual_grey })
hi("TelescopeMatching",      { fg = c.blue, bold = true })

hi("NvimTreeNormal",       { fg = c.fg })
hi("NvimTreeFolderIcon",   { fg = c.folder_green })
hi("NvimTreeFolderName",   { fg = c.folder_green })
hi("NvimTreeOpenedFolderName", { fg = c.folder_green, bold = true })
hi("NvimTreeEmptyFolderName", { fg = c.folder_green })
hi("NvimTreeRootFolder",   { fg = c.folder_green, bold = true })
hi("NvimTreeIndentMarker", { fg = c.grey })
hi("NvimTreeGitDirty",     { fg = c.yellow })
hi("NvimTreeGitNew",       { fg = c.green })
hi("NvimTreeGitDeleted",   { fg = c.red })

local lualine_theme = {
  normal = {
    a = { fg = c.black, bg = c.white,   gui = "bold" },
    b = { fg = c.fg,    bg = "NONE" },
    c = { fg = c.fg,    bg = "NONE" },
  },
  insert = {
    a = { fg = c.black, bg = c.white,  gui = "bold" },
    b = { fg = c.fg,    bg = "NONE" },
    c = { fg = c.fg,    bg = "NONE" },
  },
  visual = {
    a = { fg = c.black, bg = c.white, gui = "bold" },
    b = { fg = c.fg,    bg = "NONE" },
    c = { fg = c.fg,    bg = "NONE" },
  },
  replace = {
    a = { fg = c.black, bg = c.white,    gui = "bold" },
    b = { fg = c.fg,    bg = "NONE" },
    c = { fg = c.fg,    bg = "NONE" },
  },
  command = {
    a = { fg = c.black, bg = c.white, gui = "bold" },
    b = { fg = c.fg,    bg = "NONE" },
    c = { fg = c.fg,    bg = "NONE" },
  },
  inactive = {
    a = { fg = c.grey, bg = "NONE" },
    b = { fg = c.grey, bg = "NONE" },
    c = { fg = c.grey, bg = "NONE" },
  },
}

local M = {}
M.colors = c
M.lualine = lualine_theme
return M
