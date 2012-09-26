hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "ernesto"

highlight Comment ctermfg=darkgrey
highlight Constant ctermfg=green
highlight Identifier ctermfg=none
highlight Statement ctermfg=blue
highlight PreProc ctermfg=blue
highlight Type ctermfg=blue
highlight Special ctermfg=grey
highlight Error ctermbg=red
highlight Directory ctermfg=darkblue
highlight LineNr ctermfg=grey
highlight NonText ctermfg=grey
highlight SpecialKey ctermfg=grey
highlight Search ctermbg=darkblue ctermfg=none
:highlight Pmenu ctermbg=darkblue ctermfg=none
highlight Highlights ctermfg=darkred
autocmd BufWinEnter * match Highlights /\s\+$\| \+\ze\t\|[^\t]\zs\t\+\|\%>80v.\+/
autocmd BufWinEnter * match Highlights /\s\+$\| \+\ze\t\|[^\t]\zs\t\+\|\%>80v.\+/
autocmd InsertEnter * match Highlights /\s\+\%#\@<!$\| \+\ze\t\|[^\t]\zs\t\+\|\%>80v.\+/
autocmd InsertLeave * match Highlights /\s\+$\| \+\ze\t\|[^\t]\zs\t\+\|\%>80v.\+/
