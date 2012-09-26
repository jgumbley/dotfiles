hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "ernesto"

highlight Comment ctermfg=darkgrey guifg=#686868
highlight Constant ctermfg=green guifg=#28592D
highlight Identifier ctermfg=none guifg=#000000
highlight Statement ctermfg=blue guifg=#8CB6CF
highlight PreProc ctermfg=blue guifg=#8CB6CF
highlight Type ctermfg=blue guifg=#8CB6CF
highlight Special ctermfg=grey guifg=#686868
highlight Error ctermbg=red guibg=#8CB6CF
highlight Directory ctermfg=darkblue guifg=#2A5D79
highlight LineNr ctermfg=grey guifg=#686868
highlight NonText ctermfg=grey guifg=#686868
highlight SpecialKey ctermfg=grey guifg=#686868
highlight Search ctermbg=darkblue ctermfg=none guibg=#2A5D79 guifg=#000000
highlight Pmenu ctermbg=darkblue ctermfg=none guibg=#2A5D79 guifg=#000000
highlight Highlights ctermfg=darkred guifg=#A23E47
autocmd BufWinEnter * match Highlights /\s\+$\| \+\ze\t\|[^\t]\zs\t\+\|\%>80v.\+/
autocmd BufWinEnter * match Highlights /\s\+$\| \+\ze\t\|[^\t]\zs\t\+\|\%>80v.\+/
autocmd InsertEnter * match Highlights /\s\+\%#\@<!$\| \+\ze\t\|[^\t]\zs\t\+\|\%>80v.\+/
autocmd InsertLeave * match Highlights /\s\+$\| \+\ze\t\|[^\t]\zs\t\+\|\%>80v.\+/
