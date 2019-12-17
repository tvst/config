" Vim color file
" To learn about color definitions, use :help highlight-groups
"
" Maintainer: tvst
" Date: 2019-11-19
"
" Note: This theme is used to remap colors from a base theme to useful syntax
" highlighting groups. So it requires a base theme to be loaded first.


let colors_name = "syntax"

" Make braces, parentheses, and brackets easier to tell apart.
hi link javaScriptParens Identifier
hi link javaScriptBraces Function
hi link javaScriptIdentifier Statement
hi link javaBraces Function

" Make functions easier to find.
"let java_highlight_all=1
let java_highlight_functions="style"
hi link javaScriptFunction Function
hi link javaFuncDef Special
"hi link javaExceptions Function

" Make docstrings and docstring tags more similar to comments.
hi link SpecialComment Comment
hi link javaDocTags Comment
hi javaDocTags gui=BOLD cterm=BOLD
hi link javaDocParam javaDocTags
hi link javaDocSeeTagParam Comment
hi link javaCommentTitle Comment

" Typescript JSX
hi link xmlTag Function
hi link xmlTagName xmlTag
hi link htmlTag xmlTag
hi link htmlTagName xmlTag
hi link xmlEndTag xmlTag
hi link htmlEndTag xmlTag
hi link tsxAttributeBraces String
hi link tsxAttrib Statement
hi link ReactState Special
hi link ReactProps Special
hi link Events Special
hi link ReactLifeCycleMethods Keyword
