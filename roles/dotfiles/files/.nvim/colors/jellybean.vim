" jellybean

hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="jellybean"


" Main
hi Normal guifg=#e8e8d3 guibg=#151515 gui=none
hi Comment guifg=#888888 guibg=#151515 gui=italic

" Constant
hi Constant guifg=#cf6a4c guibg=#151515 gui=none
hi String guifg=#99ad6a guibg=#151515 gui=none
hi Character guifg=#cf6a4c guibg=#151515 gui=none
hi Number guifg=#cf6a4c guibg=#151515 gui=none
hi Boolean guifg=#cf6a4c guibg=#151515 gui=none
hi Float guifg=#cf6a4c guibg=#151515 gui=none

" Variable Name
hi Identifier guifg=#c6b6ee guibg=#151515 gui=none
hi Function guifg=#fad07a guibg=#151515 gui=none

" Statement
hi Statement guifg=#8197bf guibg=#151515 gui=none
hi Conditional guifg=#8197bf guibg=#151515 gui=none
hi Repeat guifg=#8197bf guibg=#151515 gui=none
hi Label guifg=#8197bf guibg=#151515 gui=none
hi Keyword guifg=#8197bf guibg=#151515 gui=none
hi Exception guifg=#8197bf guibg=#151515 gui=none

" Preprocessor
hi PreProc guifg=#8fbfdc guibg=#151515 gui=none
hi Include guifg=#8fbfdc guibg=#151515 gui=none
hi Define guifg=#8fbfdc guibg=#151515 gui=none
hi Macro guifg=#8fbfdc guibg=#151515 gui=none
hi PreCondit guifg=#8fbfdc guibg=#151515 gui=none

" Type
hi Type guifg=#ffb964 guibg=#151515 gui=none
hi StorageClass guifg=#c59f6f guibg=#151515 gui=none
hi Structure guifg=#8fbfdc guibg=#151515 gui=none
hi Typedef guifg=#ffb964 guibg=#151515 gui=none

" Special
hi Special guifg=#799d6a guibg=#151515 gui=none
hi SpecialChar guifg=#799d6a guibg=#151515 gui=none
hi SpecialKey guifg=#444444 guibg=#1c1c1c gui=none
hi Tag guifg=#799d6a guibg=#151515 gui=none
hi Delimiter guifg=#668799 guibg=#151515 gui=none
hi SpecialComment guifg=#799d6a guibg=#151515 gui=none
hi Debug guifg=#799d6a guibg=#151515 gui=none
hi Underlined guifg=#80a0ff guibg=#151515 gui=underline
hi Ignore guifg=#151515 guibg=#151515 gui=none
hi Error guifg=#ffffff guibg=#902020 gui=none
hi Todo guifg=#c7c7c7 guibg=#151515 gui=bold

" Window
hi StatusLine guifg=#000000 guibg=#dddddd gui=italic
hi StatusLineNC guifg=#ffffff guibg=#403c41 gui=italic
hi TabLine guifg=#000000 guibg=#b0b8c0 gui=italic
hi TabLineSel guifg=#000000 guibg=#f0f0f0 gui=bold,italic
hi TabLineFill guifg=#9098a0 guibg=#151515 gui=none
hi VertSplit guifg=#777777 guibg=#403c41 gui=none

" Menu
hi Pmenu guifg=#ffffff guibg=#606060 gui=none
hi PmenuSel guifg=#101010 guibg=#eeeeee gui=none
hi PmenuSbar guifg=#e8e8d3 guibg=#808080 gui=none
hi PmenuThumb guifg=#e8e8d3 guibg=#ffffff gui=none
hi WildMenu guifg=#f0a0c0 guibg=#302028 gui=none

" Selection
hi Visual guifg=#e8e8d3 guibg=#404040 gui=none

" Message
hi ErrorMsg guifg=#e8e8d3 guibg=#902020 gui=none
hi Question guifg=#65c254 guibg=#151515 gui=none

" Mark
hi Folded guifg=#a0a8b0 guibg=#384048 gui=italic
hi FoldColumn guifg=#535d66 guibg=#1f1f1f gui=none
hi SignColumn guifg=#777777 guibg=#333333 gui=none
hi ColorColumn guifg=#e8e8d3 guibg=#000000 gui=none
hi LineNr guifg=#605958 guibg=#151515 gui=none
hi MatchParen guifg=#ffffff guibg=#556779 gui=bold

" Cursor
hi Cursor guifg=#151515 guibg=#b0d0f0 gui=none
hi CursorColumn guifg=#e8e8d3 guibg=#1c1c1c gui=none
hi CursorLine guifg=#e8e8d3 guibg=#1c1c1c gui=none
hi CursorLineNr guifg=#ccc5c4 guibg=#151515 gui=none
hi lCursor guifg=#151515 guibg=#e8e8d3 gui=none

" Search
hi Search guifg=#f0a0c0 guibg=#302028 gui=underline

" Diff Mode
hi DiffAdd guifg=#d2ebbe guibg=#437019 gui=none
hi DiffChange guifg=#e8e8d3 guibg=#2b5b77 gui=none
hi DiffText guifg=#8fbfdc guibg=#000000 gui=reverse
hi DiffDelete guifg=#40000a guibg=#700009 gui=none

" Spell
hi SpellBad guifg=#e8e8d3 guibg=#902020 gui=underline
hi SpellCap guifg=#e8e8d3 guibg=#0000df gui=underline
hi SpellRare guifg=#e8e8d3 guibg=#540063 gui=underline
hi SpellLocal guifg=#e8e8d3 guibg=#2d7067 gui=underline

" Misc
hi NonText guifg=#606060 guibg=#151515 gui=none
hi Directory guifg=#dad085 guibg=#151515 gui=none
hi Title guifg=#70b950 guibg=#151515 gui=bold
hi StringDelimiter guifg=#556633 guibg=#151515 gui=none
hi DbgCurrent guifg=#deebfe guibg=#345fa8 gui=none
hi DbgBreakPt guifg=#e8e8d3 guibg=#4f0037 gui=none
hi IndentGuidesOdd guifg=#e8e8d3 guibg=#232323 gui=none
hi IndentGuidesEven guifg=#e8e8d3 guibg=#1b1b1b gui=none
hi TagListFileName guifg=#dad085 guibg=#151515 gui=none
hi PreciseJumpTarget guifg=#b9ed67 guibg=#405026 gui=none
hi pythonOperator guifg=#8197bf guibg=#151515 gui=none
hi coffeeRegExp guifg=#dd0093 guibg=#151515 gui=none
hi luaOperator guifg=#8197bf guibg=#151515 gui=none
hi vimOper guifg=#e8e8d3 guibg=#151515 gui=none

" Diff File
hi diffRemoved guifg=#cf6a4c guibg=#151515 gui=none
hi diffAdded guifg=#99ad6a guibg=#151515 gui=none

" Php
hi phpFunctions guifg=#fad07a guibg=#151515 gui=none
hi phpSuperglobal guifg=#c6b6ee guibg=#151515 gui=none
hi phpQuoteSingle guifg=#556633 guibg=#151515 gui=none
hi phpQuoteDouble guifg=#556633 guibg=#151515 gui=none
hi phpBoolean guifg=#cf6a4c guibg=#151515 gui=none
hi phpNull guifg=#cf6a4c guibg=#151515 gui=none
hi phpOperator guifg=#e8e8d3 guibg=#151515 gui=none
hi phpRelation guifg=#e8e8d3 guibg=#151515 gui=none
hi phpVarSelector guifg=#c6b6ee guibg=#151515 gui=none

" Ruby
hi rubySharpBang guifg=#888888 guibg=#151515 gui=none
hi rubyClass guifg=#447799 guibg=#151515 gui=none
hi rubyIdentifier guifg=#c6b6fe guibg=#151515 gui=none
hi rubyConstant guifg=#ffb964 guibg=#151515 gui=none
hi rubyFunction guifg=#fad07a guibg=#151515 gui=none
hi rubyInstanceVariable guifg=#c6b6fe guibg=#151515 gui=none
hi rubySymbol guifg=#7697d6 guibg=#151515 gui=none
hi rubyGlobalVariable guifg=#c6b6fe guibg=#151515 gui=none
hi rubyModule guifg=#447799 guibg=#151515 gui=none
hi rubyControl guifg=#7597c6 guibg=#151515 gui=none
hi rubyString guifg=#99ad6a guibg=#151515 gui=none
hi rubyStringDelimiter guifg=#556633 guibg=#151515 gui=none
hi rubyInterpolationDelimiter guifg=#c6b6ee guibg=#151515 gui=none
hi rubyRegexpDelimiter guifg=#540063 guibg=#151515 gui=none
hi rubyRegexp guifg=#dd0093 guibg=#151515 gui=none
hi rubyRegexpSpecial guifg=#a40073 guibg=#151515 gui=none
hi rubyPredefinedIdentifier guifg=#de5577 guibg=#151515 gui=none

" Erlang
hi erlangAtom guifg=#7697d6 guibg=#151515 gui=none
hi erlangBIF guifg=#de5577 guibg=#151515 gui=none
hi erlangFunction guifg=#de5577 guibg=#151515 gui=none
hi erlangDirective guifg=#8197bf guibg=#151515 gui=none
hi erlangNode guifg=#c6b6ee guibg=#151515 gui=none

" Java
hi javaScriptValue guifg=#cf6a4c guibg=#151515 gui=none
hi javaScriptRegexpString guifg=#dd0093 guibg=#151515 gui=none

" C
hi cFormat guifg=#c6b6ee guibg=#151515 gui=none
hi cOperator guifg=#cf6a4c guibg=#151515 gui=none

" Objc
hi objcClass guifg=#ffb964 guibg=#151515 gui=none
hi objcSubclass guifg=#ffb964 guibg=#151515 gui=none
hi objcSuperclass guifg=#ffb964 guibg=#151515 gui=none
hi objcDirective guifg=#447799 guibg=#151515 gui=none
hi objcStatement guifg=#cf6a4c guibg=#151515 gui=none
hi objcMethodName guifg=#c6b6ee guibg=#151515 gui=none
hi objcMethodArg guifg=#e8e8d3 guibg=#151515 gui=none
hi objcMessageName guifg=#c6b6ee guibg=#151515 gui=none

" Cocoa
hi cocoaClass guifg=#ffb964 guibg=#151515 gui=none
hi cocoaFunction guifg=#fad07a guibg=#151515 gui=none

" HTML
hi htmlTag guifg=#8197bf guibg=#151515 gui=none
hi htmlEndTag guifg=#8197bf guibg=#151515 gui=none
hi htmlTagName guifg=#8197bf guibg=#151515 gui=none

" Xml
hi xmlTag guifg=#8197bf guibg=#151515 gui=none
hi xmlEndTag guifg=#8197bf guibg=#151515 gui=none
hi xmlTagName guifg=#8197bf guibg=#151515 gui=none
hi xmlEqual guifg=#8197bf guibg=#151515 gui=none
hi xmlEntity guifg=#799d6a guibg=#151515 gui=none
hi xmlEntityPunct guifg=#799d6a guibg=#151515 gui=none
hi xmlDocTypeDecl guifg=#8fbfdc guibg=#151515 gui=none
hi xmlDocTypeKeyword guifg=#8fbfdc guibg=#151515 gui=none