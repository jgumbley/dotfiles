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

Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'fancy'

Bundle 'int3/vim-extradite'
nnoremap <c-g> :Extradite!<cr>

Bundle 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

Bundle 'tpope/vim-fugitive'
Bundle 'https://github.com/rking/vim-detailed'
Bundle 'rodjek/vim-puppet'
Bundle 'vim-scripts/VimClojure'
Bundle 'airblade/vim-gitgutter'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'wannesm/wmgraphviz.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'tpope/vim-fugitive'
Bundle 'christoomey/vim-tmux-navigator'

" can remove?
" source ~/.vim/startup/color.vim
" source ~/.vim/startup/mappings.vim
source ~/.vim/startup/settings.vim
"

" spacing and stuff
filetype plugin on
filetype indent on
set expandtab       " tabs are converted to spaces
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4
set nofoldenable
set colorcolumn=0
set noswapfile

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


