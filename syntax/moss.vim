" Vim syntax file
" Language: Moss

if exists("b:current_syntax")
  finish
endif

" Comments
syn match mossComment "#.*$" contains=mossTodo
syn keyword mossTodo contained TODO FIXME XXX NOTE

" Keywords
syn keyword mossControl as assume else if import use while
syn keyword mossKeyword static
syn keyword mossStorage bind context fn let type val var

" Literals
syn region mossString start=+"+ skip=+\\\\\|\\"+ end=+"+
  \ contains=mossStringEscape
syn match mossStringEscape contained
  \ +\\[\"\\nrt]+
syn match mossNumber "\<\d\+\>"

" Identifiers
syn match mossType "\<[A-Z]\w*\>"
syn match mossNamespace "\<\w\+\ze::"
syn match mossFunction "\<\w\+\ze\s*("
syn match mossFunction "\<\w\+\ze\s*\["

" Operators
syn match mossOperator
  \ "!=\|::\|<<\|<=\|==\|>=\|>>\|!\|%\|&\|\*\|+\|-\|/\|:\|<\|=\|>\|\^\||"

" Highlighting
hi def link mossComment Comment
hi def link mossTodo Todo
hi def link mossControl Keyword
hi def link mossKeyword Keyword
hi def link mossStorage StorageClass
hi def link mossString String
hi def link mossStringEscape SpecialChar
hi def link mossNumber Number
hi def link mossType Type
hi def link mossNamespace Include
hi def link mossFunction Function
hi def link mossOperator Operator

let b:current_syntax = "moss"
