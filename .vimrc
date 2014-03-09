set nocompatible
filetype off
set encoding=utf-8


" bind leader (not ladder) key
"
let mapleader = ","
map <Leader>q :qa!<CR>
map <Leader>n :new<CR>

" lets vundle the crap out of it
"
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" there follow my plugins
"
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeMapOpenInTab='t'
let NERDTreeIgnore = ['\.pyc$']
Bundle 'jistr/vim-nerdtree-tabs'
map <Leader>n <plug>NERDTreeTabsToggle<CR>

Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"Bundle 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'fancy'

 
Bundle 'int3/vim-extradite'
nnoremap <c-g> :Extradite!<cr>

Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=venv/*

Bundle 'thoughtbot/vim-rspec'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

Bundle 'jgdavey/tslime.vim'
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

Bundle 'Valloric/YouCompleteMe'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

Bundle 'hynek/vim-python-pep8-indent'
let g:pymode_indent = 0

Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'https://github.com/rking/vim-detailed'
Bundle 'rodjek/vim-puppet'
Bundle 'vim-scripts/VimClojure'
Bundle 'airblade/vim-gitgutter'
Bundle 'wannesm/wmgraphviz.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-haml'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'dart-lang/dart-vim-plugin'
Bundle 'avakhov/vim-yaml'


" can remove?
" source ~/.vim/startup/color.vim
" source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
"
" able to jump nicely between splits
"
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
noremap j gj
noremap k gk

colorscheme wombat256
colorscheme detailed
hi TabLineFill ctermfg=Black ctermbg=Black
hi TabLine ctermfg=Blue ctermbg=Yellow
hi TabLineSel ctermfg=Red ctermbg=Yellow

map <c-n> <Esc>:bn<CR>
map <c-m> <Esc>:bN<CR>

" spacing and stuff
filetype plugin on
filetype indent on
set expandtab       " tabs are converted to spaces
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4
set nofoldenable
set colorcolumn=0
set noswapfile

set colorcolumn=80
set timeoutlen=1000 ttimeoutlen=0
set backspace=indent,eol,start


