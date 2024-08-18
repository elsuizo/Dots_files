require("colorbuddy").colorscheme("low_entropy")

local colorbuddy = require("colorbuddy")
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

Color.new('background', '#121212')
Color.new('background_liner', '#252525')
Color.new('red', '#d02b61')
Color.new('green', '#99cc99')
-- Color.new('yellow', '#f0c674')
Color.new('white', '#ffffff')
Color.new('blue', '#5688af')
Color.new('comment_color', '#707070')
Color.new('orange', '#ff9f43')
Color.new('brigh_green', '#68ff00')
Color.new('pastel_green', '#c1e1c1')
Color.new('monoblue', '#57aadd')
Color.new('brightwhite', '#ffffff')
Color.new('linenrblack', '#404040')
Color.new('brightblack', '#707070')
Color.new('bright_green', '#68ff00')
Color.new('color_column', '#080808')
Color.new('cyan_new', "#9aedfe")
Color.new('other_black', '#505050')
Color.new('grayliner', '#BEBEBE')
Color.new('pale_gray', '#C0C0C0')

Group.new('Function', colors.white, colors.background, styles.bold)
Group.new('luaFunctionCall', groups.Function, groups.Function, groups.Function)
Group.new('Comment', colors.comment_color, colors.none)
Group.new('Constant', colors.orange, colors.background, styles.italic)
Group.new('Macro', colors.orange, colors.background)
Group.new('Typedef', colors.orange, colors.background)
Group.new('TODO', colors.bright_green, colors.linenrblack, styles.bold)
Group.new('Note', colors.brightwhite, colors.background, styles.bold)
Group.new('String', colors.blue, colors.none)
Group.new('Include', colors.blue, colors.background)
Group.new('Character', colors.monoblue, colors.background)
Group.new('PreProc', colors.monoblue, colors.background)
Group.new('Boolean', colors.red, colors.background)
Group.new('SpecialComment', colors.red, colors.background, styles.bold)
Group.new('SpecialChar', colors.red, colors.background, styles.bold)
Group.new('Special', colors.red, colors.background, styles.bold)
Group.new('Float', colors.red, colors.background)
Group.new('Number', colors.red, colors.background)
Group.new('Identifier', colors.brightwhite, colors.background)
Group.new('Statement', colors.brightwhite, colors.background)
Group.new('Conditional', colors.brightwhite, colors.background)
Group.new('Repeat', colors.brightwhite, colors.background)
Group.new('Operator', colors.brightwhite, colors.background)
Group.new('Keyword', colors.brightwhite, colors.background)
Group.new('Define', colors.brightwhite, colors.background)
Group.new('Label', colors.linenrblack, colors.background)
Group.new('Type', colors.linenrblack, colors.background)
Group.new('ColorColumn', colors.none, colors.color_column, styles.bold)
Group.new('Directory', colors.blue, colors.none)
Group.new('VertSplit', colors.red, colors.none)
Group.new('WinSeparator', colors.red, colors.none)
Group.new('LineNrBelow', colors.linenrblack, colors.none, styles.bold)
Group.new('LineNr', colors.red, colors.none, styles.bold)
Group.new('LineNrAbove', colors.linenrblack, colors.none, styles.bold)
Group.new('CursorLineNr', colors.red, colors.none, styles.bold)
Group.new('Delimeter', colors.brightwhite, colors.none, styles.bold)
Group.new('StorageClass', colors.cyan_new, colors.none, styles.bold)
Group.new('MatchParen', colors.red, colors.none, styles.bold)
Group.new('PmenuSel', colors.black, colors.none, styles.bold)
Group.new('Pmenu', colors.grayliner, colors.linenrblack)
Group.new('Visual', colors.black, colors.grayliner, styles.bold)
Group.new('Search', colors.black, colors.white, styles.bold)
Group.new('IncSearch', colors.orange, colors.none, styles.bold)
Group.new('Cursor', colors.blue, colors.linenrblack, styles.bold)
Group.new('NonText', colors.red, colors.none)
Group.new('BufferLineSeparatorSelected', colors.none, colors.none)
-- Group.new('BufferCurrent', colors.none, colors.linenrblack)
-- Group.new('BufferInactive', colors.linenrblack, colors.none)
-- Group.new('BufferVisibleIndex', colors.linenrblack, colors.red)

Group.new('LspDiagnosticsSignHint', colors.background_liner, colors.none, styles.bold)
Group.new('LspDiagnosticsDefaultWarning', colors.background_liner, colors.none, styles.bold)
Group.new('LspDiagnosticsDefaultHint', colors.background_liner, colors.none, styles.bold)
Group.new('DiagnosticError', colors.red, colors.none)
Group.new('DiagnosticWarn', colors.background_liner, colors.none)
Group.new('DiagnosticInfo', colors.background_liner, colors.none)
Group.new('DiagnosticHint', colors.background_liner, colors.none)
-- Group.new('Normal', colors.white, colors.background)

-- rust
Group.new('rustSelf', colors.blue, colors.none, styles.bold)
Group.new('rustPanic', colors.red, colors.none, styles.bold)
Group.new('rustAssert', colors.green, colors.none, styles.bold)
Group.new('rustType', colors.cyan_new, colors.none, styles.bold)
Group.new('rustMutable', colors.red, colors.none, styles.bold)
Group.new('rustQuestionMark', colors.red, colors.none, styles.bold)
Group.new('rust_analyzer', colors.red, colors.none, styles.bold)

-- markdown
Group.new('markdownCode', colors.comment_color, colors.none)
Group.new('markdownCodeBlock', colors.comment_color, colors.none)
Group.new('markdownCodeDelimiter', colors.red, colors.none)
Group.new('markdownUrl', colors.green, colors.none, styles.bold)

-- --TODO(elsuizo: 2024-08-16): no se que hace esto
-- Group.new('Error', colors.red:light(), nil, styles.bold)
