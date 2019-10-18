" Vim color file
" To learn about color definitions, use :help highlight-groups
"
" Maintainer: tvst
" Date: 2019-01-19
"
" Notes:
" 1. This theme requires your terminal background to be set to #121212. The
"    theme itself doesn't set this for performance reasons.
" 2. This theme only sets the color of Vim's chrome. It does not set the color
"    of any actual code. Use neoneon.vim of equivalent for that.

" Basic settings {{{1
set background=dark

let colors_name = "minichrome"


" Just for reference {{{1

" Grays
" gui     terminal
" #000000 000
" #080808 232
" #121212 233
" #1c1c1c 234
" #262626 235
" #303030 236
" #3a3a3a 237
" #444444 238
" #4e4e4e 239
" #585858 240
" #626262 241
" #6c6c6c 242
" #767676 243
" #808080 244
" #8a8a8a 245
" #949494 246
" #9e9e9e 247
" #a8a8a8 248
" #b2b2b2 249
" #bcbcbc 250
" #c6c6c6 251
" #d0d0d0 252
" #dadada 253
" #e4e4e4 254
" #eeeeee 255

" Main colors used
" ----------------
" Background #121212 NONE(233)
" Chrome background #1c1c1c 234
" Highlighted background #262626 235
" Popup background #3a3a3a 237
" Inactive text #585858 240
" Secondary text #8a8a8a 245 (use sparingly)
" Active text #bcbcbc 250
" Content text #e4e4e4 NONE(254)


" Normal {{{1
hi! Normal       gui=NONE guifg=#e4e4e4 guibg=#121212 cterm=NONE ctermfg=NONE ctermbg=NONE
"hi! Normal       gui=NONE guifg=#e4e4e4 guibg=#121212 cterm=NONE ctermfg=254 ctermbg=233


" Search {{{1
hi! IncSearch    gui=NONE guifg=#5fffff guibg=#0087af cterm=NONE ctermfg=87 ctermbg=31
hi! Search       gui=NONE guifg=#ffafff guibg=#d7005f cterm=NONE ctermfg=219 ctermbg=161
hi! link MatchParen IncSearch

" Messages {{{1
hi! ErrorMsg     gui=BOLD guifg=#dd005f guibg=NONE cterm=BOLD ctermfg=197 ctermbg=NONE
hi! link WarningMsg ErrorMsg
hi! link Question ErrorMsg
hi! ModeMsg      gui=BOLD guifg=#e4e4e4 guibg=NONE cterm=BOLD ctermfg=254 ctermbg=NONE
hi! link MoreMsg ModeMsg

" Split area {{{1
hi! StatusLine   gui=NONE guifg=#bcbcbc guibg=#1c1c1c cterm=NONE ctermfg=250 ctermbg=234
hi! StatusLineNC gui=NONE guifg=#585858 guibg=#1c1c1c cterm=NONE ctermfg=240 ctermbg=234
hi! VertSplit    gui=NONE guifg=#121212 guibg=NONE cterm=NONE ctermfg=233 ctermbg=NONE


" Tabs {{{1
hi! TabLineFill gui=NONE guifg=#585858 guibg=NONE cterm=NONE ctermfg=240 ctermbg=NONE
hi! TabLine     gui=NONE guifg=#585858 guibg=NONE cterm=NONE ctermfg=240 ctermbg=NONE
hi! TabLineSel  gui=NONE guifg=#bcbcbc guibg=NONE cterm=NONE ctermfg=250 ctermbg=NONE

" Cursor {{{1
hi! Cursor       gui=NONE guifg=#000000 guibg=#dfff00 cterm=NONE ctermfg=190 ctermbg=221
hi! link lCursor Cursor
hi! link lCursor CursorIM
hi! link lCursor WildMenu
hi! Visual       gui=NONE guifg=#5fffff guibg=#0087af cterm=NONE ctermfg=87 ctermbg=31
hi! link VisualNOS Visual
hi! CursorLine   gui=NONE guifg=NONE guibg=#262626 cterm=NONE ctermfg=NONE ctermbg=235

" Fold {{{1
hi! Folded       gui=NONE guifg=#8a8a8a guibg=NONE cterm=NONE ctermfg=245 ctermbg=NONE
hi! FoldColumn   gui=NONE guifg=#8a8a8a guibg=NONE cterm=NONE ctermfg=245 ctermbg=NONE

" Other {{{1
hi! Directory    gui=NONE guifg=#afd7ff guibg=NONE cterm=NONE ctermfg=153 ctermbg=NONE
hi! LineNr       gui=NONE guifg=#585858 guibg=NONE cterm=NONE ctermfg=240 ctermbg=NONE
hi! CursorLineNr gui=NONE guifg=#bcbcbc guibg=#262626 cterm=NONE ctermfg=250 ctermbg=235
hi! link NonText LineNr
hi! link SignColumn LineNr

" Used for hidden chars {{{1
hi! SpecialKey   gui=BOLD guifg=#ffd700 guibg=NONE cterm=BOLD ctermfg=220 ctermbg=NONE
hi! WhiteSpace   gui=BOLD guifg=#ffd700 guibg=NONE cterm=BOLD ctermfg=220 ctermbg=NONE

" Diff {{{1
hi! DiffAdd      gui=BOLD guifg=#dfff00 guibg=#005f00 cterm=BOLD ctermfg=190 ctermbg=22
hi! DiffDelete   gui=BOLD guifg=#ff8700 guibg=#5f0000 cterm=BOLD ctermfg=208 ctermbg=52
hi! DiffText     gui=BOLD guifg=#dfff00 guibg=#005f00 cterm=BOLD ctermfg=190 ctermbg=22
hi! DiffChange   gui=NONE guifg=NONE guibg=#1c1c1c cterm=NONE ctermfg=NONE ctermbg=NONE

" OmniComplete gui {{{1
hi! Pmenu        gui=NONE guifg=#e4e4e4 guibg=#3a3a3a cterm=NONE ctermfg=254 ctermbg=237
hi! PmenuSel     gui=NONE guifg=#000000 guibg=#dfff00 cterm=NONE ctermfg=000 ctermbg=190
hi! PmenuThumb   gui=NONE guifg=#000000 guibg=#585858 cterm=NONE ctermfg=000 ctermbg=240
hi! link PmenuSbar Pmenu

" Column at 80char {{{1
hi! ColorColumn  gui=NONE guifg=#dd005f guibg=#080808 cterm=NONE ctermfg=197 ctermbg=232

" Plugins {{{1

" ShowMarks plugin {{{1
hi! ShowMarksHLl gui=NONE guifg=#585858 guibg=NONE cterm=NONE ctermfg=240 ctermbg=NONE
hi! link ShowMarksHLu ShowMarkHLl
hi! link ShowMarksHLo ShowMarkHLl
hi! link ShowMarksHLm ShowMarkHLl

" fzf plugin {{{1
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'PreProc'],
  \ 'info':    ['fg', 'Comment'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Cursor'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Indent guides {{{1
hi! IndentGuidesOdd   gui=NONE guifg=NONE guibg=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
hi! IndentGuidesEven  gui=NONE guifg=NONE guibg=#262626 cterm=NONE ctermfg=NONE ctermbg=235

" vim: foldmethod=marker foldlevel=0
