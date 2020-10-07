" Vim color file
" To learn about color definitions, use :help highlight-groups
"
" Maintainer: tvst
" Date: 2019-01-12
"
" Notes:
" 1. This theme requires your terminal background to be set to #121212. The
"    theme itself doesn't set this for performance reasons.
" 2. This theme only sets the color of actual code syntax. It does not set any
"    chrome colors. Use minichrome.vim or equivalent for that.


hi clear

if exists("syntax_on")
   syntax reset
endif

let colors_name = "neoneon"


" Basic syntax groups
"hi Normal         gui=NONE guifg=#eeeeee guibg=#121212 cterm=NONE ctermfg=254 ctermbg=233
hi Comment        gui=NONE guifg=#af8787 guibg=NONE cterm=NONE ctermfg=138 ctermbg=NONE
hi Constant       gui=NONE guifg=#5fd7ff guibg=NONE cterm=NONE ctermfg=81 ctermbg=NONE
hi Error          gui=BOLD guifg=#ffffff guibg=#d70000 cterm=BOLD ctermfg=254 ctermbg=160
hi Function       gui=BOLD guifg=#d7005f guibg=NONE cterm=BOLD ctermfg=161 ctermbg=NONE
hi Identifier     gui=BOLD guifg=#ff8787 guibg=NONE cterm=BOLD ctermfg=210 ctermbg=NONE
hi Ignore         gui=NONE guifg=#303030 guibg=NONE cterm=NONE ctermfg=236 ctermbg=NONE
hi Keyword        gui=BOLD guifg=#d7005f guibg=NONE cterm=BOLD ctermfg=161 ctermbg=NONE
hi Normal         gui=NONE guifg=#eeeeee guibg=NONE cterm=NONE ctermfg=254 ctermbg=NONE
hi PreProc        gui=NONE guifg=#ffafff guibg=NONE cterm=NONE ctermfg=219 ctermbg=NONE
hi Special        gui=NONE guifg=#ffaf5f guibg=NONE cterm=NONE ctermfg=215 ctermbg=NONE
hi Statement      gui=NONE guifg=#af5faf guibg=NONE cterm=NONE ctermfg=133 ctermbg=NONE
hi Title          gui=BOLD guifg=#eeeeee guibg=NONE cterm=BOLD ctermfg=254 ctermbg=NONE
hi Todo           gui=BOLD,UNDERLINE guifg=#ff87af guibg=NONE cterm=BOLD,UNDERLINE ctermfg=211 ctermbg=NONE
hi Type           gui=NONE guifg=#5fafff guibg=NONE cterm=NONE ctermfg=75 ctermbg=NONE
"hi Underlined    gui=UNDERLINE guifg=fg guibg=NONE cterm=UNDERLINE ctermfg=fg ctermbg=NONE

" Netrw
hi link netrwDateSep Normal
hi link netrwTimeSep Normal
hi link netrwExe Constant
hi link netrwDir Directory
hi link netrwClassify Directory
hi link netrwTreeBar Delimiter
hi link netrwMarkFile Statement

" Make it easier to spot typos in primitive types.
hi Character gui=BOLD guifg=#dfff87 guibg=NONE cterm=BOLD ctermfg=192 ctermbg=NONE
hi Number    gui=NONE guifg=#dfff87 guibg=NONE cterm=NONE ctermfg=192 ctermbg=NONE
hi Float     gui=NONE guifg=#5fffaf guibg=NONE cterm=NONE ctermfg=85 ctermbg=NONE
hi link Boolean Number
