" Vim syntax file
" Language: Pog
" Maintainer: Me
" Latest Revision: today

if exists("b:current_syntax")
  finish
endif

syn match pogSeparator "|"
syn match pogCalDate '\d\{2}/\d\{2}/\d\{2}\s\a\{3}'
syn match pogCalTime '\d\{2}h\d\{2}-\d\{2}h\d\{2}'
syn match pogCalTime '\d\{2}h\d\{2}-x\{5}'
syn match pogCalTime 'x\{5}-x\{5}'
syn match pogCalProject '+[a-z_]\+'
syn match pogCalContext '@[0-9a-zA-Z_]\+'
syn keyword pog80Title The 80 char diary
syn match pog80Date '[0-9]\{6}\a'
syn match pogAppntmnt '!'
syn match pogToConfirm '?'

let b:current_syntax = "pog"

hi def link pogKeyword String
hi def link pogCalProject Function
hi def link pogCalContext Constant
hi def link pogSeparator Special
hi def link pogCalTime String
hi def link pogCalDate Statement
hi def link pog80Title Statement
hi def link pog80Date Statement
hi def link pogAppntmnt ErrorMsg
hi def link pogToConfirm ErrorMsg
