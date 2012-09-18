"============== Custom Functions ===============
fun! Format_WhiteSpace_RemoveTrailing()
	:%s/\v\s*$//g
endfun

fun! Format_Inflection_ToCamelCase()
	:s/\v([a-z])_([a-z])/\1\u\2/g
endfun

fun! Format_Inflection_ToUnderscored()
	:s/\v([a-z])([A-Z])/\L\1_\2/g
endfun

fun! CheckTabs()
	if search("\t") != 0
		echohl ErrorMsg | ec "                                 !WARNING!                              "
		\ |              ec "There are tabs in the file, do you want to convert them to spaces? [Y/n]" | echohl None
		let choice = nr2char(getchar())
		if choice == 'y' || choice == "\<CR>"
			retab 2
		endif
	else
		return
	endif
endfun

function! EnsureDirExists ()
	let required_dir = expand("%:h")
	if !isdirectory(required_dir)
		call mkdir(required_dir, 'p')
	endif
endfunction

" screen stuff
fun! s:Sinit(filen)
	echo expand(a:filen)
	exec "ScreenShell cd " . expand(a:filen) . "; \\clear"
endfun

""" FocusMode
function! ToggleFocusMode()
	if (&foldcolumn != 12)
		set laststatus=0
		set numberwidth=10
		set foldcolumn=12
		set noruler
		hi FoldColumn ctermbg=none
		hi LineNr ctermfg=0 ctermbg=none
		hi NonText ctermfg=0
	else
		set laststatus=2
		set numberwidth=4
		set foldcolumn=0
		set ruler
		colorscheme skittles_berry "re-call your colorscheme
	endif
endfunc
nnoremap <F1> :call ToggleFocusMode()<cr>

function! Find(name)
	let l:list=system("find . -name '".a:name."' | grep -v \".svn/\" | perl -ne 'print \"$.\\t$_\"'")
	let l:num=strlen(substitute(l:list, "[^\n]", "", "g"))
	if l:num < 1
		echo "'".a:name."' not found"
		return
	endif
	if l:num != 1
		echo l:list
		let l:input=input("Which ? (CR=nothing)\n")
		if strlen(l:input)==0
			return
		endif
		if strlen(substitute(l:input, "[0-9]", "", "g"))>0
			echo "Not a number"
			return
		endif
		if l:input<1 || l:input>l:num
			echo "Out of range"
			return
		endif
		let l:line=matchstr("\n".l:list, "\n".l:input."\t[^\n]*")
	else
		let l:line=l:list
	endif
	let l:line=substitute(l:line, "^[^\t]*\t./", "", "")
	execute ":e ".l:line
endfunction
command! -nargs=1 Find :call Find("<args>")
