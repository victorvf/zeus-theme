vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "eva_bearded_light"

-- Paleta de cores suaves
local c = {
  -- Background e foreground (off-white)
  bg = "#FAF8F5",            -- Fundo creme suave
  bg_alt = "#F2F0ED",        -- Fundo alternativo
  bg_highlight = "#E8E6E3",  -- Highlight
  bg_visual = "#D4E5F7",     -- Seleção visual
  fg = "#4A4458",            -- Texto principal
  fg_dim = "#6B6878",        -- Texto secundário
  fg_comment = "#9590A0",    -- Comentários

  -- Cores suavizadas para syntax
  pink = "#D64D7A",          -- Keywords (def, class, return, if, etc)
  pink_light = "#E07A9E",    -- Operadores lógicos (and, or, not)
  purple = "#8B6DC4",        -- Decorators, special
  blue = "#4A7FCC",          -- Nomes de função na definição
  blue_light = "#5BA3D9",    -- Parâmetros
  cyan = "#2A9D9D",          -- Classes, tipos, mixins
  green = "#50A050",         -- Strings
  green_dark = "#3D7A3D",    -- Strings alternativo
  yellow = "#C99520",        -- Constantes, números
  orange = "#D97030",        -- Chamadas de função/método
  red = "#C94A4A",           -- Erros, self
  coral = "#D96060",         -- Atributos, properties
  teal = "#3A9A8A",          -- Variáveis especiais
  magenta = "#A855C4",       -- Tipos especiais

  -- Cores de UI
  line_nr = "#B8B9BD",
  cursor_line = "#F0F0F4",
  selection = "#C9E6FF",
  search = "#FFDB8A",
  match = "#FFE4B3",
  border = "#E0E0E4",

  -- Diagnósticos
  error = "#C94A4A",
  warning = "#D98A30",
  info = "#4A7FCC",
  hint = "#2A9D9D",

  -- Git
  git_add = "#50A050",
  git_change = "#D98A30",
  git_delete = "#C94A4A",

  -- Terminal
  black = "#4A4458",
  bright_black = "#6B6878",
  white = "#FAF8F5",
  bright_white = "#FFFFFF",
}

-- Função auxiliar para definir highlights
local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

--------------------------------------------------------------------------------
-- EDITOR
--------------------------------------------------------------------------------
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg_alt })
hi("NormalNC", { fg = c.fg, bg = c.bg })
hi("Cursor", { fg = c.bg, bg = c.purple })
hi("CursorLine", { bg = c.cursor_line })
hi("CursorColumn", { bg = c.cursor_line })
hi("ColorColumn", { bg = c.bg_highlight })
hi("LineNr", { fg = c.line_nr })
hi("CursorLineNr", { fg = c.pink, bold = true })
hi("SignColumn", { fg = c.fg_dim, bg = c.bg })
hi("VertSplit", { fg = c.border })
hi("WinSeparator", { fg = c.border })
hi("Folded", { fg = c.fg_comment, bg = c.bg_highlight })
hi("FoldColumn", { fg = c.fg_comment, bg = c.bg })
hi("NonText", { fg = c.line_nr })
hi("SpecialKey", { fg = c.line_nr })
hi("Whitespace", { fg = c.line_nr })
hi("EndOfBuffer", { fg = c.bg })

--------------------------------------------------------------------------------
-- SEARCH & SELECTION
--------------------------------------------------------------------------------
hi("Visual", { bg = c.bg_visual })
hi("VisualNOS", { bg = c.bg_visual })
hi("Search", { fg = c.fg, bg = c.search })
hi("IncSearch", { fg = c.bg, bg = c.orange })
hi("CurSearch", { fg = c.bg, bg = c.orange })
hi("Substitute", { fg = c.bg, bg = c.red })
hi("MatchParen", { fg = c.purple, bg = c.match, bold = true })

--------------------------------------------------------------------------------
-- POPUP MENU
--------------------------------------------------------------------------------
hi("Pmenu", { fg = c.fg, bg = c.bg_alt })
hi("PmenuSel", { fg = c.bg, bg = c.purple })
hi("PmenuSbar", { bg = c.bg_highlight })
hi("PmenuThumb", { bg = c.purple })

--------------------------------------------------------------------------------
-- STATUSLINE & TABLINE
--------------------------------------------------------------------------------
hi("StatusLine", { fg = c.fg, bg = c.bg_highlight })
hi("StatusLineNC", { fg = c.fg_comment, bg = c.bg_alt })
hi("TabLine", { fg = c.fg_dim, bg = c.bg_alt })
hi("TabLineFill", { bg = c.bg_alt })
hi("TabLineSel", { fg = c.pink, bg = c.bg, bold = true })
hi("WinBar", { fg = c.fg, bg = c.bg })
hi("WinBarNC", { fg = c.fg_comment, bg = c.bg })

--------------------------------------------------------------------------------
-- MENSAGENS
--------------------------------------------------------------------------------
hi("MsgArea", { fg = c.fg })
hi("ModeMsg", { fg = c.pink, bold = true })
hi("MoreMsg", { fg = c.cyan })
hi("Question", { fg = c.cyan })
hi("ErrorMsg", { fg = c.error })
hi("WarningMsg", { fg = c.warning })
hi("Title", { fg = c.pink, bold = true })
hi("Directory", { fg = c.blue })

--------------------------------------------------------------------------------
-- SPELL
--------------------------------------------------------------------------------
hi("SpellBad", { undercurl = true, sp = c.error })
hi("SpellCap", { undercurl = true, sp = c.warning })
hi("SpellLocal", { undercurl = true, sp = c.info })
hi("SpellRare", { undercurl = true, sp = c.hint })

--------------------------------------------------------------------------------
-- SYNTAX BÁSICO
--------------------------------------------------------------------------------
hi("Comment", { fg = c.fg_comment, italic = true })
hi("Constant", { fg = c.yellow })
hi("String", { fg = c.green })
hi("Character", { fg = c.green })
hi("Number", { fg = c.yellow })
hi("Boolean", { fg = c.yellow, bold = true })
hi("Float", { fg = c.yellow })

hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.blue })

hi("Statement", { fg = c.pink })
hi("Conditional", { fg = c.pink })
hi("Repeat", { fg = c.pink })
hi("Label", { fg = c.pink })
hi("Operator", { fg = c.pink_light })
hi("Keyword", { fg = c.pink })
hi("Exception", { fg = c.pink })

hi("PreProc", { fg = c.purple })
hi("Include", { fg = c.pink })
hi("Define", { fg = c.purple })
hi("Macro", { fg = c.purple })
hi("PreCondit", { fg = c.purple })

hi("Type", { fg = c.cyan })
hi("StorageClass", { fg = c.pink })
hi("Structure", { fg = c.cyan })
hi("Typedef", { fg = c.cyan })

hi("Special", { fg = c.orange })
hi("SpecialChar", { fg = c.teal })
hi("Tag", { fg = c.pink })
hi("Delimiter", { fg = c.fg_dim })
hi("SpecialComment", { fg = c.purple, bold = true })
hi("Debug", { fg = c.red })

hi("Underlined", { fg = c.blue, underline = true })
hi("Ignore", { fg = c.fg_comment })
hi("Error", { fg = c.error })
hi("Todo", { fg = c.bg, bg = c.yellow, bold = true })

--------------------------------------------------------------------------------
-- TREESITTER
--------------------------------------------------------------------------------
-- Identificadores
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.red, bold = true })  -- self, cls
hi("@variable.parameter", { fg = c.blue_light })
hi("@variable.member", { fg = c.coral })  -- Atributos de objeto

hi("@constant", { fg = c.yellow, bold = true })
hi("@constant.builtin", { fg = c.yellow, bold = true })  -- None, True, False
hi("@constant.macro", { fg = c.yellow })

hi("@module", { fg = c.cyan })
hi("@label", { fg = c.purple })

-- Literais
hi("@string", { fg = c.green })
hi("@string.documentation", { fg = c.green_dark, italic = true })
hi("@string.regex", { fg = c.teal })
hi("@string.escape", { fg = c.teal, bold = true })
hi("@string.special", { fg = c.teal })

hi("@character", { fg = c.green })
hi("@character.special", { fg = c.teal })

hi("@boolean", { fg = c.yellow, bold = true })
hi("@number", { fg = c.yellow })
hi("@number.float", { fg = c.yellow })

-- Tipos
hi("@type", { fg = c.cyan })
hi("@type.builtin", { fg = c.cyan, italic = true })
hi("@type.definition", { fg = c.cyan, bold = true })
hi("@type.qualifier", { fg = c.pink })

hi("@attribute", { fg = c.purple })
hi("@property", { fg = c.coral })

-- Funções
hi("@function", { fg = c.blue, bold = true })  -- Definição de função
hi("@function.builtin", { fg = c.magenta })
hi("@function.call", { fg = c.orange })  -- Chamada de função
hi("@function.macro", { fg = c.purple })
hi("@function.method", { fg = c.blue, bold = true })  -- Definição de método
hi("@function.method.call", { fg = c.orange, underline = true })  -- Chamada de método

hi("@constructor", { fg = c.cyan, bold = true })

-- Keywords
hi("@keyword", { fg = c.pink })
hi("@keyword.coroutine", { fg = c.pink })
hi("@keyword.function", { fg = c.pink })  -- def, lambda
hi("@keyword.operator", { fg = c.pink_light })  -- and, or, not, in
hi("@keyword.import", { fg = c.pink })  -- import, from
hi("@keyword.storage", { fg = c.pink })
hi("@keyword.repeat", { fg = c.pink })  -- for, while
hi("@keyword.return", { fg = c.pink })  -- return
hi("@keyword.debug", { fg = c.pink })
hi("@keyword.exception", { fg = c.pink })  -- try, except, raise
hi("@keyword.conditional", { fg = c.pink })  -- if, elif, else
hi("@keyword.conditional.ternary", { fg = c.pink })
hi("@keyword.directive", { fg = c.purple })
hi("@keyword.directive.define", { fg = c.purple })

-- Pontuação
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg_dim })
hi("@punctuation.special", { fg = c.pink })

-- Comentários
hi("@comment", { fg = c.fg_comment, italic = true })
hi("@comment.documentation", { fg = c.fg_comment })
hi("@comment.error", { fg = c.error, bold = true })
hi("@comment.warning", { fg = c.warning, bold = true })
hi("@comment.todo", { fg = c.bg, bg = c.yellow, bold = true })
hi("@comment.note", { fg = c.info, bold = true })

-- Markup (Markdown, etc)
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })

hi("@markup.heading", { fg = c.pink, bold = true })
hi("@markup.heading.1", { fg = c.pink, bold = true })
hi("@markup.heading.2", { fg = c.blue, bold = true })
hi("@markup.heading.3", { fg = c.cyan, bold = true })
hi("@markup.heading.4", { fg = c.green, bold = true })
hi("@markup.heading.5", { fg = c.orange, bold = true })
hi("@markup.heading.6", { fg = c.red, bold = true })

hi("@markup.quote", { fg = c.fg_comment, italic = true })
hi("@markup.math", { fg = c.cyan })
hi("@markup.environment", { fg = c.purple })

hi("@markup.link", { fg = c.blue, underline = true })
hi("@markup.link.label", { fg = c.blue })
hi("@markup.link.url", { fg = c.blue, underline = true })

hi("@markup.raw", { fg = c.teal })
hi("@markup.raw.block", { fg = c.teal })

hi("@markup.list", { fg = c.pink })
hi("@markup.list.checked", { fg = c.green })
hi("@markup.list.unchecked", { fg = c.fg_dim })

-- Tags (HTML, JSX)
hi("@tag", { fg = c.pink })
hi("@tag.attribute", { fg = c.orange })
hi("@tag.delimiter", { fg = c.fg_dim })

-- Diff
hi("@diff.plus", { fg = c.git_add })
hi("@diff.minus", { fg = c.git_delete })
hi("@diff.delta", { fg = c.git_change })

-- Python específico
hi("@keyword.type", { fg = c.cyan })  -- dict, list type hints
hi("@type.python", { fg = c.cyan })
hi("@attribute.python", { fg = c.purple })  -- Decorators
hi("@decorator", { fg = c.purple })
hi("@decorator.python", { fg = c.purple })

--------------------------------------------------------------------------------
-- LSP SEMANTIC TOKENS
--------------------------------------------------------------------------------
hi("@lsp.type.class", { fg = c.cyan, bold = true })
hi("@lsp.type.decorator", { fg = c.purple })
hi("@lsp.type.enum", { fg = c.cyan })
hi("@lsp.type.enumMember", { fg = c.yellow, bold = true })
hi("@lsp.type.function", { fg = c.blue, bold = true })
hi("@lsp.type.interface", { fg = c.cyan })
hi("@lsp.type.macro", { fg = c.purple })
hi("@lsp.type.method", { fg = c.blue, bold = true })
hi("@lsp.type.namespace", { fg = c.cyan })
hi("@lsp.type.parameter", { fg = c.blue_light })
hi("@lsp.type.property", { fg = c.coral })
hi("@lsp.type.struct", { fg = c.cyan })
hi("@lsp.type.type", { fg = c.cyan })
hi("@lsp.type.typeParameter", { fg = c.cyan })
hi("@lsp.type.variable", { fg = c.fg })
hi("@lsp.type.selfKeyword", { fg = c.red, bold = true })
hi("@lsp.type.selfParameter", { fg = c.red, bold = true })

hi("@lsp.mod.deprecated", { strikethrough = true })
hi("@lsp.mod.readonly", { italic = true })
hi("@lsp.mod.defaultLibrary", { italic = true })

hi("@lsp.typemod.function.defaultLibrary", { fg = c.magenta })
hi("@lsp.typemod.method.defaultLibrary", { fg = c.magenta })

--------------------------------------------------------------------------------
-- DIAGNÓSTICOS
--------------------------------------------------------------------------------
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn", { fg = c.warning })
hi("DiagnosticInfo", { fg = c.info })
hi("DiagnosticHint", { fg = c.hint })

hi("DiagnosticVirtualTextError", { fg = c.error, bg = "#F5E8E8" })
hi("DiagnosticVirtualTextWarn", { fg = c.warning, bg = "#F5EEE5" })
hi("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#E8EEF5" })
hi("DiagnosticVirtualTextHint", { fg = c.hint, bg = "#E5F2F0" })

hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warning })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })

hi("DiagnosticFloatingError", { fg = c.error })
hi("DiagnosticFloatingWarn", { fg = c.warning })
hi("DiagnosticFloatingInfo", { fg = c.info })
hi("DiagnosticFloatingHint", { fg = c.hint })

hi("DiagnosticSignError", { fg = c.error })
hi("DiagnosticSignWarn", { fg = c.warning })
hi("DiagnosticSignInfo", { fg = c.info })
hi("DiagnosticSignHint", { fg = c.hint })

--------------------------------------------------------------------------------
-- GIT SIGNS / GIT GUTTER
--------------------------------------------------------------------------------
hi("GitSignsAdd", { fg = c.git_add })
hi("GitSignsChange", { fg = c.git_change })
hi("GitSignsDelete", { fg = c.git_delete })
hi("GitSignsCurrentLineBlame", { fg = c.fg_comment })

-- vim-gitgutter
hi("GitGutterAdd", { fg = c.git_add, bg = c.bg })
hi("GitGutterChange", { fg = c.git_change, bg = c.bg })
hi("GitGutterDelete", { fg = c.git_delete, bg = c.bg })
hi("GitGutterChangeDelete", { fg = c.git_change, bg = c.bg })

--------------------------------------------------------------------------------
-- TELESCOPE
--------------------------------------------------------------------------------
hi("TelescopeNormal", { fg = c.fg, bg = c.bg })
hi("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
hi("TelescopeResultsNormal", { fg = c.fg, bg = c.bg })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg_alt })

-- Bordas coloridas e chamativas
hi("TelescopeBorder", { fg = c.purple, bold = true })
hi("TelescopePromptBorder", { fg = c.pink, bold = true })
hi("TelescopePreviewBorder", { fg = c.cyan, bold = true })
hi("TelescopeResultsBorder", { fg = c.orange, bold = true })

-- Títulos
hi("TelescopeTitle", { fg = c.bg, bg = c.purple, bold = true })
hi("TelescopePromptTitle", { fg = c.bg, bg = c.pink, bold = true })
hi("TelescopePreviewTitle", { fg = c.bg, bg = c.cyan, bold = true })
hi("TelescopeResultsTitle", { fg = c.bg, bg = c.orange, bold = true })

-- Seleção e matches
hi("TelescopeSelection", { fg = c.fg, bg = c.bg_visual, bold = true })
hi("TelescopeSelectionCaret", { fg = c.pink, bold = true })
hi("TelescopeMatching", { fg = c.orange, bold = true })
hi("TelescopeMultiSelection", { fg = c.purple })
hi("TelescopeMultiIcon", { fg = c.pink })

-- Preview do Git diff
hi("TelescopePreviewLine", { bg = c.bg_visual })
hi("TelescopePreviewMatch", { fg = c.orange, bold = true })
hi("TelescopePreviewMessageFillchar", { fg = c.border })

-- Linhas de diff no preview (git status, git commits, etc)
hi("diffAdded", { fg = "#2E7D32", bg = "#E8F5E9", bold = true })
hi("diffRemoved", { fg = "#C62828", bg = "#FFEBEE", bold = true })
hi("diffChanged", { fg = "#F57C00", bg = "#FFF3E0" })
hi("diffLine", { fg = c.cyan, bold = true })
hi("diffFile", { fg = c.purple, bold = true })
hi("diffIndexLine", { fg = c.blue })
hi("diffOldFile", { fg = c.red })
hi("diffNewFile", { fg = c.green, bold = true })

-- Git diff adicional
hi("DiffAdd", { fg = "#2E7D32", bg = "#C8E6C9" })
hi("DiffChange", { fg = "#F57C00", bg = "#FFE0B2" })
hi("DiffDelete", { fg = "#C62828", bg = "#FFCDD2" })
hi("DiffText", { fg = "#1565C0", bg = "#BBDEFB", bold = true })

-- Added/Removed para git
hi("Added", { fg = "#2E7D32", bold = true })
hi("Removed", { fg = "#C62828", bold = true })
hi("Changed", { fg = "#F57C00" })

--------------------------------------------------------------------------------
-- NVIM-TREE / NEO-TREE
--------------------------------------------------------------------------------
hi("NvimTreeNormal", { fg = c.fg, bg = c.bg_alt })
hi("NvimTreeNormalNC", { fg = c.fg, bg = c.bg_alt })
hi("NvimTreeRootFolder", { fg = c.pink, bold = true })
hi("NvimTreeFolderName", { fg = c.blue })
hi("NvimTreeFolderIcon", { fg = c.blue })
hi("NvimTreeOpenedFolderName", { fg = c.blue, bold = true })
hi("NvimTreeEmptyFolderName", { fg = c.fg_comment })
hi("NvimTreeSymlink", { fg = c.cyan })
hi("NvimTreeSpecialFile", { fg = c.orange })
hi("NvimTreeImageFile", { fg = c.pink })
hi("NvimTreeGitDirty", { fg = c.git_change })
hi("NvimTreeGitNew", { fg = c.git_add })
hi("NvimTreeGitDeleted", { fg = c.git_delete })
hi("NvimTreeIndentMarker", { fg = c.border })

hi("NeoTreeNormal", { fg = c.fg, bg = c.bg_alt })
hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg_alt })
hi("NeoTreeRootName", { fg = c.pink, bold = true })
hi("NeoTreeDirectoryName", { fg = c.blue })
hi("NeoTreeDirectoryIcon", { fg = c.blue })
hi("NeoTreeSymbolicLinkTarget", { fg = c.cyan })
hi("NeoTreeGitAdded", { fg = c.git_add })
hi("NeoTreeGitModified", { fg = c.git_change })
hi("NeoTreeGitDeleted", { fg = c.git_delete })

--------------------------------------------------------------------------------
-- CMP (AUTOCOMPLETE)
--------------------------------------------------------------------------------
hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrDeprecated", { fg = c.fg_comment, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = c.orange, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.orange })
hi("CmpItemKind", { fg = c.purple })
hi("CmpItemMenu", { fg = c.fg_comment })

hi("CmpItemKindClass", { fg = c.cyan })
hi("CmpItemKindColor", { fg = c.pink })
hi("CmpItemKindConstant", { fg = c.yellow })
hi("CmpItemKindConstructor", { fg = c.cyan })
hi("CmpItemKindEnum", { fg = c.cyan })
hi("CmpItemKindEnumMember", { fg = c.yellow })
hi("CmpItemKindEvent", { fg = c.orange })
hi("CmpItemKindField", { fg = c.coral })
hi("CmpItemKindFile", { fg = c.blue })
hi("CmpItemKindFolder", { fg = c.blue })
hi("CmpItemKindFunction", { fg = c.blue })
hi("CmpItemKindInterface", { fg = c.cyan })
hi("CmpItemKindKeyword", { fg = c.pink })
hi("CmpItemKindMethod", { fg = c.blue })
hi("CmpItemKindModule", { fg = c.cyan })
hi("CmpItemKindOperator", { fg = c.pink_light })
hi("CmpItemKindProperty", { fg = c.coral })
hi("CmpItemKindReference", { fg = c.fg })
hi("CmpItemKindSnippet", { fg = c.green })
hi("CmpItemKindStruct", { fg = c.cyan })
hi("CmpItemKindText", { fg = c.fg })
hi("CmpItemKindTypeParameter", { fg = c.cyan })
hi("CmpItemKindUnit", { fg = c.yellow })
hi("CmpItemKindValue", { fg = c.yellow })
hi("CmpItemKindVariable", { fg = c.fg })

--------------------------------------------------------------------------------
-- INDENT-BLANKLINE
--------------------------------------------------------------------------------
hi("IndentBlanklineChar", { fg = c.border })
hi("IndentBlanklineContextChar", { fg = c.pink })
hi("IndentBlanklineContextStart", { sp = c.pink, underline = true })
hi("IblIndent", { fg = c.border })
hi("IblScope", { fg = c.pink })

--------------------------------------------------------------------------------
-- TREESITTER-CONTEXT
--------------------------------------------------------------------------------
hi("TreesitterContext", { bg = c.bg_alt })
hi("TreesitterContextLineNumber", { fg = c.pink, bg = c.bg_alt })
hi("TreesitterContextSeparator", { fg = c.border })
hi("TreesitterContextBottom", { underline = true, sp = c.border })

--------------------------------------------------------------------------------
-- WHICH-KEY
--------------------------------------------------------------------------------
hi("WhichKey", { fg = c.pink })
hi("WhichKeyGroup", { fg = c.cyan })
hi("WhichKeySeparator", { fg = c.fg_comment })
hi("WhichKeyDesc", { fg = c.fg })
hi("WhichKeyFloat", { bg = c.bg_alt })
hi("WhichKeyBorder", { fg = c.border })
hi("WhichKeyValue", { fg = c.fg_comment })

--------------------------------------------------------------------------------
-- LAZY.NVIM
--------------------------------------------------------------------------------
hi("LazyNormal", { fg = c.fg, bg = c.bg_alt })
hi("LazyH1", { fg = c.bg, bg = c.pink, bold = true })
hi("LazyH2", { fg = c.pink, bold = true })
hi("LazyButton", { fg = c.fg, bg = c.bg_highlight })
hi("LazyButtonActive", { fg = c.bg, bg = c.pink })
hi("LazySpecial", { fg = c.cyan })
hi("LazyProgressDone", { fg = c.pink })
hi("LazyProgressTodo", { fg = c.border })

--------------------------------------------------------------------------------
-- NOTIFY
--------------------------------------------------------------------------------
hi("NotifyERRORBorder", { fg = c.error })
hi("NotifyERRORIcon", { fg = c.error })
hi("NotifyERRORTitle", { fg = c.error })
hi("NotifyWARNBorder", { fg = c.warning })
hi("NotifyWARNIcon", { fg = c.warning })
hi("NotifyWARNTitle", { fg = c.warning })
hi("NotifyINFOBorder", { fg = c.info })
hi("NotifyINFOIcon", { fg = c.info })
hi("NotifyINFOTitle", { fg = c.info })
hi("NotifyDEBUGBorder", { fg = c.fg_comment })
hi("NotifyDEBUGIcon", { fg = c.fg_comment })
hi("NotifyDEBUGTitle", { fg = c.fg_comment })
hi("NotifyTRACEBorder", { fg = c.purple })
hi("NotifyTRACEIcon", { fg = c.purple })
hi("NotifyTRACETitle", { fg = c.purple })

--------------------------------------------------------------------------------
-- MINI (mini.nvim)
--------------------------------------------------------------------------------
hi("MiniStatuslineModeNormal", { fg = c.bg, bg = c.pink, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.bg, bg = c.green, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.bg, bg = c.orange, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.bg, bg = c.red, bold = true })
hi("MiniStatuslineModeCommand", { fg = c.bg, bg = c.yellow, bold = true })

--------------------------------------------------------------------------------
-- LUALINE (cores para o tema auto-detectar)
--------------------------------------------------------------------------------
hi("lualine_a_normal", { fg = c.bg, bg = c.blue, bold = true })
hi("lualine_a_insert", { fg = c.bg, bg = c.green, bold = true })
hi("lualine_a_visual", { fg = c.bg, bg = c.purple, bold = true })
hi("lualine_a_replace", { fg = c.bg, bg = c.red, bold = true })
hi("lualine_a_command", { fg = c.bg, bg = c.yellow, bold = true })
hi("lualine_b_normal", { fg = c.fg, bg = c.bg_highlight })
hi("lualine_c_normal", { fg = c.fg_dim, bg = c.bg_alt })

--------------------------------------------------------------------------------
-- RAINBOW DELIMITERS
--------------------------------------------------------------------------------
hi("RainbowDelimiterRed", { fg = c.pink })
hi("RainbowDelimiterYellow", { fg = c.yellow })
hi("RainbowDelimiterBlue", { fg = c.blue })
hi("RainbowDelimiterOrange", { fg = c.orange })
hi("RainbowDelimiterGreen", { fg = c.green })
hi("RainbowDelimiterViolet", { fg = c.purple })
hi("RainbowDelimiterCyan", { fg = c.cyan })

--------------------------------------------------------------------------------
-- TERMINAL
--------------------------------------------------------------------------------
vim.g.terminal_color_0 = c.black
vim.g.terminal_color_1 = c.red
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_5 = c.purple
vim.g.terminal_color_6 = c.cyan
vim.g.terminal_color_7 = c.white
vim.g.terminal_color_8 = c.bright_black
vim.g.terminal_color_9 = c.pink
vim.g.terminal_color_10 = c.green
vim.g.terminal_color_11 = c.yellow
vim.g.terminal_color_12 = c.blue
vim.g.terminal_color_13 = c.magenta
vim.g.terminal_color_14 = c.cyan
vim.g.terminal_color_15 = c.bright_white
