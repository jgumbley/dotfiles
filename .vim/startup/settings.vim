"============== General Settings ===============
set gfn=Menlo:h13
set dict=/usr/share/dict/words
set showcmd
set ruler
set incsearch
set wildmenu
syntax enable
set synmaxcol=0
set term=xterm-256color
set display=uhex
set shortmess=aAIsT
set nowrap

set completeopt=menu
set mousemodel=popup
set backspace=2
set number
set nocompatible

set enc=utf-8
set fillchars=vert:¦

set expandtab
set tabstop=4
set shiftwidth=2
set cc=+1,+2

set linespace=0
set history=1000
set list listchars=tab:▸ ,trail:-,extends:>,precedes:<,eol:¬

set laststatus=2
set ffs=unix
set mouse=a
set vb
set ttym=xterm2

set wrap
set hlsearch

set tags=~/.vim/tags/tags

if version > 720
	set undofile
	set undodir=~/vimundo/
endif

let mapleader=','
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

let g:Powerline_symbols = 'fancy'

set timeoutlen=0
if has("gui_running")
	set guioptions=egmrt
endif
autocmd BufWinEnter,BufRead,BufWrite,BufNewFile *.md setfiletype markdown

