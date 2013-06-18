" Unmap the arrow keys
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
map <F3> :NERDTree<CR><CR>
map <F1> :tabn<CR><CR>
map <F8> :tabp<CR><CR>
map Q <Nop>
map <F12> :qa!<CR><CR>
