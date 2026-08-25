-- Castle On A Lake — custom Neovim colorscheme.
-- Palette drawn from the castle paintings: sandstone, firelight, sage,
-- lake reflections, storm sky, and twilight violet on a near-black canvas.

local palette = {
  bg     = "#060606",
  bg1    = "#040404",
  bg2    = "#040303",
  bg3    = "#1f1f1e",

  fg     = "#f0d4e4",
  fg1    = "#b49faa",
  fg2    = "#f2dae8",
  fg3    = "#f4deea",

  red    = "#a06048",
  yellow = "#d4b060",
  orange = "#c47838",
  green  = "#80a070",
  cyan   = "#6090a0",
  blue   = "#5870a8",
  magenta= "#8060a0",
  brown  = "#5a4038",

  bright_red    = "#d38669",
  bright_yellow = "#ffd780",
  bright_orange = "#f79d52",
  bright_green  = "#afd39e",
  bright_cyan   = "#89c0d3",
  bright_blue   = "#7d99db",
  bright_magenta= "#ae89d3",
  bright_brown  = "#8d695e",

  accent   = "#9b6b9f",
  selection= "#f0d4e4",
  muted    = "#626262",
}

local function hi(group, opts)
  local cmd = "highlight " .. group
  local parts = {}
  if opts.fg then table.insert(parts, "guifg=" .. opts.fg) end
  if opts.bg then table.insert(parts, "guibg=" .. opts.bg) end
  if opts.sp then table.insert(parts, "guisp=" .. opts.sp) end
  if opts.bold then table.insert(parts, "gui=bold") end
  if opts.italic then table.insert(parts, "gui=italic") end
  if opts.underline then table.insert(parts, "gui=underline") end
  if opts.reverse then table.insert(parts, "gui=reverse") end
  if opts.strikethrough then table.insert(parts, "gui=strikethrough") end
  if opts.nocombine then table.insert(parts, "gui=nocombine") end
  if opts.special then table.insert(parts, "cterm=" .. opts.special) end
  vim.cmd(cmd .. " " .. table.concat(parts, " "))
end

local function link(src, target)
  vim.cmd("highlight! link " .. src .. " " .. target)
end

local function setup()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
  vim.g.colors_name = "castle-on-a-lake"

  local p = palette

  -- Editor
  hi("Normal",       { fg = p.fg, bg = p.bg })
  hi("NormalFloat",  { fg = p.fg, bg = p.bg })
  hi("NormalNC",     { fg = p.fg1, bg = p.bg })
  hi("Cursor",       { fg = p.bg, bg = p.fg })
  hi("lCursor",      { fg = p.bg, bg = p.fg })
  hi("CursorIM",     { fg = p.bg, bg = p.fg })
  hi("CursorLine",   { bg = p.bg3 })
  hi("CursorColumn", { bg = p.bg3 })
  hi("ColorColumn",  { bg = p.bg3 })
  hi("LineNr",       { fg = p.muted })
  hi("CursorLineNr", { fg = p.fg1 })
  hi("SignColumn",   { fg = p.muted, bg = p.bg })
  hi("FoldColumn",   { fg = p.muted, bg = p.bg })
  hi("Folded",       { fg = p.fg1, bg = p.bg3 })
  hi("NonText",      { fg = p.bg3 })
  hi("SpecialKey",   { fg = p.bg3 })
  hi("EndOfBuffer",  { fg = p.bg3 })
  hi("Directory",    { fg = p.blue })

  -- Selection / search
  hi("Visual",       { bg = p.bg3, fg = p.fg })
  hi("VisualNOS",    { bg = p.bg3, fg = p.fg })
  hi("Search",       { fg = p.bg, bg = p.yellow })
  hi("IncSearch",    { fg = p.bg, bg = p.orange })
  hi("CurSearch",    { fg = p.bg, bg = p.orange, bold = true })
  hi("Substitute",   { fg = p.bg, bg = p.red })

  -- Statusline / tabs
  hi("StatusLine",   { fg = p.fg, bg = p.bg3 })
  hi("StatusLineNC", { fg = p.fg1, bg = p.bg3 })
  hi("TabLine",      { fg = p.fg1, bg = p.bg3 })
  hi("TabLineFill",  { bg = p.bg3 })
  hi("TabLineSel",   { fg = p.fg, bg = p.bg, bold = true })

  -- Popups / wild menu
  hi("Pmenu",        { fg = p.fg, bg = p.bg3 })
  hi("PmenuSel",     { fg = p.accent, bg = p.bg3, bold = true })
  hi("PmenuSbar",    { bg = p.bg3 })
  hi("PmenuThumb",   { bg = p.muted })
  hi("WildMenu",     { fg = p.bg, bg = p.accent })

  -- Messages / errors / warnings
  hi("ErrorMsg",     { fg = p.red })
  hi("WarningMsg",   { fg = p.orange })
  hi("ModeMsg",      { fg = p.fg, bold = true })
  hi("MoreMsg",      { fg = p.green })
  hi("Question",     { fg = p.cyan })

  -- Misc editor
  hi("VertSplit",    { fg = p.bg3 })
  hi("WinSeparator", { fg = p.bg3 })
  hi("Title",        { fg = p.accent, bold = true })
  hi(" Conceal",     { fg = p.muted, bg = p.bg })
  hi("Special",      { fg = p.cyan })
  hi("MatchParen",   { bg = p.bg3, bold = true })

  -- Spelling
  hi("SpellBad",     { sp = p.red, undercurl = true })
  hi("SpellCap",     { sp = p.blue, undercurl = true })
  hi("SpellLocal",   { sp = p.cyan, undercurl = true })
  hi("SpellRare",    { sp = p.magenta, undercurl = true })

  -- Diff
  hi("DiffAdd",      { bg = "#1a3a1a" })
  hi("DiffChange",   { bg = "#2a2a1a" })
  hi("DiffDelete",   { fg = p.red, bg = "#3a1a1a" })
  hi("DiffText",     { bg = "#2a2a1a", bold = true })
  hi("diffAdded",    { fg = p.green })
  hi("diffRemoved",  { fg = p.red })
  hi("diffChanged",  { fg = p.yellow })
  hi("diffFile",     { fg = p.orange })
  hi("diffLine",     { fg = p.cyan })

  -- Diagnostics
  hi("DiagnosticError", { fg = p.red })
  hi("DiagnosticWarn",  { fg = p.yellow })
  hi("DiagnosticInfo",  { fg = p.cyan })
  hi("DiagnosticHint",  { fg = p.green })
  hi("DiagnosticUnderlineError", { sp = p.red, undercurl = true })
  hi("DiagnosticUnderlineWarn",  { sp = p.yellow, undercurl = true })
  hi("DiagnosticUnderlineInfo",  { sp = p.cyan, undercurl = true })
  hi("DiagnosticUnderlineHint",  { sp = p.green, undercurl = true })
  hi("DiagnosticSignError", { fg = p.red })
  hi("DiagnosticSignWarn",  { fg = p.yellow })
  hi("DiagnosticSignInfo",  { fg = p.cyan })
  hi("DiagnosticSignHint",  { fg = p.green })
  hi("DiagnosticVirtualTextError", { fg = p.red })
  hi("DiagnosticVirtualTextWarn",  { fg = p.yellow })
  hi("DiagnosticVirtualTextInfo",  { fg = p.cyan })
  hi("DiagnosticVirtualTextHint",  { fg = p.green })

  -- Syntax
  hi("Comment",        { fg = p.muted, italic = true })
  hi("Constant",       { fg = p.orange })
  hi("String",         { fg = p.green })
  hi("Character",      { fg = p.green })
  hi("Number",         { fg = p.orange })
  hi("Boolean",        { fg = p.orange })
  hi("Float",          { fg = p.orange })
  hi("Identifier",     { fg = p.fg })
  hi("Function",       { fg = p.blue })
  hi("Statement",      { fg = p.magenta })
  hi("Conditional",    { fg = p.magenta })
  hi("Repeat",         { fg = p.magenta })
  hi("Label",          { fg = p.yellow })
  hi("Operator",       { fg = p.fg1 })
  hi("Keyword",        { fg = p.magenta })
  hi("Exception",      { fg = p.magenta })
  hi("PreProc",        { fg = p.cyan })
  hi("Include",        { fg = p.cyan })
  hi("Define",         { fg = p.cyan })
  hi("Macro",          { fg = p.cyan })
  hi("PreCondit",      { fg = p.cyan })
  hi("Type",           { fg = p.yellow })
  hi("StorageClass",   { fg = p.yellow })
  hi("Structure",      { fg = p.yellow })
  hi("Typedef",        { fg = p.yellow })
  hi("Special",        { fg = p.cyan })
  hi("SpecialChar",    { fg = p.orange })
  hi("Tag",            { fg = p.orange })
  hi("Delimiter",      { fg = p.fg1 })
  hi("Debug",          { fg = p.red })
  hi("Underlined",     { fg = p.cyan, underline = true })
  hi("Ignore",         { fg = p.muted })
  hi("Error",          { fg = p.red })
  hi("Todo",           { fg = p.yellow, bold = true })

  -- Treesitter
  link("@variable",          "Identifier")
  link("@variable.builtin",  "Special")
  link("@variable.parameter","Identifier")
  link("@variable.member",   "Identifier")
  link("@constant",          "Constant")
  link("@constant.builtin",  "Constant")
  link("@constant.macro",    "Constant")
  link("@module",            "Identifier")
  link("@module.builtin",    "Special")
  link("@label",             "Label")
  link("@string",            "String")
  link("@string.documentation","String")
  link("@string.regexp",     "Special")
  link("@string.escape",     "SpecialChar")
  link("@string.special",    "SpecialChar")
  link("@character",         "Character")
  link("@character.special", "SpecialChar")
  link("@number",            "Number")
  link("@number.float",      "Float")
  link("@boolean",           "Boolean")
  link("@type",              "Type")
  link("@type.builtin",      "Type")
  link("@type.definition",   "Typedef")
  link("@attribute",         "PreProc")
  link("@property",          "Identifier")
  link("@function",          "Function")
  link("@function.builtin",  "Special")
  link("@function.call",     "Function")
  link("@function.macro",    "Macro")
  link("@function.method",   "Function")
  link("@function.method.call","Function")
  link("@constructor",       "Special")
  link("@operator",          "Operator")
  link("@keyword",           "Keyword")
  link("@keyword.coroutine", "Keyword")
  link("@keyword.function",  "Keyword")
  link("@keyword.operator",  "Keyword")
  link("@keyword.import",    "Include")
  link("@keyword.type",      "Structure")
  link("@keyword.modifier",  "StorageClass")
  link("@keyword.repeat",    "Repeat")
  link("@keyword.return",    "Keyword")
  link("@keyword.debug",     "Debug")
  link("@keyword.exception", "Exception")
  link("@keyword.conditional","Conditional")
  link("@keyword.directive", "PreProc")
  link("@keyword.directive.define","Define")
  link("@punctuation.delimiter","Delimiter")
  link("@punctuation.bracket","Delimiter")
  link("@punctuation.special","Special")
  link("@comment",           "Comment")
  link("@comment.documentation","Comment")
  link("@comment.error",     "DiagnosticError")
  link("@comment.warning",   "DiagnosticWarn")
  link("@comment.todo",      "Todo")
  link("@comment.note",      "DiagnosticInfo")
  link("@diff.plus",         "diffAdded")
  link("@diff.minus",        "diffRemoved")
  link("@diff.delta",        "diffChanged")
  link("@tag",               "Tag")
  link("@tag.attribute",     "Identifier")
  link("@tag.delimiter",     "Delimiter")

  -- LSP
  link("@lsp.type.class",        "Type")
  link("@lsp.type.decorator",    "Function")
  link("@lsp.type.enum",         "Type")
  link("@lsp.type.enumMember",   "Constant")
  link("@lsp.type.function",     "Function")
  link("@lsp.type.interface",    "Type")
  link("@lsp.type.macro",        "Macro")
  link("@lsp.type.method",       "Function")
  link("@lsp.type.namespace",    "Identifier")
  link("@lsp.type.parameter",    "Identifier")
  link("@lsp.type.property",     "Identifier")
  link("@lsp.type.struct",       "Type")
  link("@lsp.type.type",         "Type")
  link("@lsp.type.typeParameter","Type")
  link("@lsp.type.variable",     "Identifier")
  link("@lsp.mod.deprecated",    "DiagnosticUnderlineError")
  link("@lsp.mod.readonly",      "Constant")
  link("@lsp.mod.defaultLibrary","Special")
  link("@lsp.mod.global",        "Special")

  -- GitSigns
  link("GitSignsAdd",    "diffAdded")
  link("GitSignsChange", "diffChanged")
  link("GitSignsDelete", "diffRemoved")

  -- Telescope
  hi("TelescopeBorder",       { fg = p.muted })
  hi("TelescopePromptBorder", { fg = p.muted })
  hi("TelescopeResultsBorder",{ fg = p.muted })
  hi("TelescopePreviewBorder",{ fg = p.muted })
  hi("TelescopeSelection",    { fg = p.accent, bold = true })
  hi("TelescopeMatching",     { fg = p.orange, bold = true })

  -- WhichKey
  hi("WhichKey",          { fg = p.accent })
  hi("WhichKeyGroup",     { fg = p.blue })
  hi("WhichKeyDesc",      { fg = p.fg })
  hi("WhichKeySeparator", { fg = p.muted })
  hi("WhichKeyFloat",     { bg = p.bg3 })

  -- nvim-cmp
  hi("CmpItemAbbr",          { fg = p.fg })
  hi("CmpItemAbbrDeprecated",{ fg = p.muted, strikethrough = true })
  hi("CmpItemAbbrMatch",     { fg = p.orange })
  hi("CmpItemAbbrMatchFuzzy", { fg = p.orange })
  hi("CmpItemKind",          { fg = p.cyan })
  hi("CmpItemKindFunction",  { fg = p.blue })
  hi("CmpItemKindMethod",    { fg = p.blue })
  hi("CmpItemKindClass",     { fg = p.yellow })
  hi("CmpItemKindInterface", { fg = p.yellow })
  hi("CmpItemKindStruct",    { fg = p.yellow })
  hi("CmpItemKindEnum",      { fg = p.yellow })
  hi("CmpItemKindProperty",  { fg = p.fg })
  hi("CmpItemKindField",     { fg = p.fg })
  hi("CmpItemKindVariable",  { fg = p.fg })
  hi("CmpItemKindConstant",  { fg = p.orange })
  hi("CmpItemKindModule",    { fg = p.cyan })
  hi("CmpItemKindKeyword",   { fg = p.magenta })
  hi("CmpItemKindSnippet",   { fg = p.green })
  hi("CmpItemKindText",      { fg = p.fg })
  hi("CmpItemKindFile",      { fg = p.orange })
  hi("CmpItemMenu",          { fg = p.muted })

  -- Lazy
  link("LazyButton",     "Visual")
  link("LazyButtonActive","CursorLine")
  hi("LazyH1",           { fg = p.accent, bold = true })
  hi("LazyH2",           { fg = p.blue, bold = true })
  link("LazyComment",    "Comment")
  link("LazyNormal",     "NormalFloat")

  -- Mini.map
  hi("MiniMapNormal",      { fg = p.muted })
  hi("MiniMapSymbolLine",  { fg = p.blue })
  hi("MiniMapSymbolView",  { fg = p.muted })

  -- Notifications
  link("NotifyERRORBorder","DiagnosticError")
  link("NotifyWARNBorder", "DiagnosticWarn")
  link("NotifyINFOBorder", "DiagnosticInfo")
  link("NotifyDEBUGBorder","Comment")
  link("NotifyTRACEBorder","DiagnosticHint")
  link("NotifyERRORIcon",  "DiagnosticError")
  link("NotifyWARNIcon",   "DiagnosticWarn")
  link("NotifyINFOIcon",   "DiagnosticInfo")
  link("NotifyDEBUGIcon",  "Comment")
  link("NotifyTRACEIcon",  "DiagnosticHint")
  link("NotifyERRORTitle", "DiagnosticError")
  link("NotifyWARNTitle",  "DiagnosticWarn")
  link("NotifyINFOTitle",  "DiagnosticInfo")
  link("NotifyDEBUGTitle", "Comment")
  link("NotifyTRACETitle", "DiagnosticHint")

  -- Noice
  link("NoiceCmdlinePopup",     "NormalFloat")
  link("NoiceCmdlinePopupBorder","TelescopeBorder")

  -- Indent-blankline
  hi("IblIndent", { fg = p.bg3 })
  hi("IblScope",  { fg = p.muted })
end

setup()
