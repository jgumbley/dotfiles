define green
	@tput setaf 2
	@tput bold
	@echo $1
	@tput sgr0
endef

.PHONY: default¬
default: vundles
	$(call green,"[All steps successful]")

~/.vim/bundle/Vundle.vim:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

.PHONY: vundles
vundles: ~/.vim/bundle/Vundle.vim
	vim +BundleInstall +qall
	$(call green,"[Installed Vundles]")

clean:
	$(call green,"[Not Cleaned up]")
