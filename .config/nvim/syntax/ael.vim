if exists("b:current_syntax")
  finish
endif

syn keyword aelCond     if else return macro context globals Set Log jump
syn match   aelCond     "#include"
"syn match   aelFunction "\(\s\)&[a-zA-Z0-9\-]*"
syn region  aelString   start=+"+ skip=+\\.+ end=+"+
syn region  aelComment  start=+/\*+ skip=+\\.+ end=+\*/+
syn match   aelComment  "//.*$"
syn match   aelParen    "[(){}[\]<>]"
syn match   aelNumber   "\(^\|\s\|/\)_[0-9X\.\+\[\]-]*"
syn match   aelExten    "\${[a-zA-Z:\_(())]*[-9]*}"

" ProcessQ
syn match   aelQ        "&[a-zA-Z0-9\-]*" contained
syn match   aelTag      "tag=[^,]*" contained
syn match   aelTag      "dialAttr=[^,]*" contained
syn match   aelQ1       ",\zs\w\+" contained
syn match   aelQ2       ",\zs\w\+_\w\+" contained
syn match   aelQ3       ",\zs\d\+" contained
syn region  aelQueue    start="&[a-zA-Z0-9\-]*(" end=");" contains=aelQ,aelTag,aelQ1,aelQ2,aelQ3

hi def link aelFunction Function
hi def link aelString   String
hi def link aelComment  Comment
hi def link aelParen    NvimParenthesis
hi def link aelTag      Tag
hi def link aelNumber   Number
hi def link aelCond     Conditional
hi def link aelMacro    Macro
hi def link aelExten    NvimIdentifier
hi def link aelParams   @parameter
hi link     aelQ        Identifier
hi link     aelQ1       Constant
hi link     aelQ2       String
hi link     aelQ3       Number

let b:current_syntax = "ael"
