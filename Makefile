define green
	@tput setaf 2
	@tput bold
	@echo $1
	@tput sgr0
endef

.PHONY: default¬
default: .deps.done .vim/bundle/vundle .vundles.done
	$(call green,"[All steps successful]")

.deps.done:
	brew install vim
	brew install git
	brew install tmux
	touch .deps.done
	$(call green,"[Installed Dependancies]")

.vim/bundle/vundle:
	git submodule update --init
	$(call green,"[Cloned Vundle]")

.vundles.done:
	vim +BundleInstall +qall
	.vim/bundle/YouCompleteMe/install.sh
	touch .vundles.done
	$(call green,"[Installed Vundles]")

clean:
	rm -f .*.done
	rm -Rf .vim/bundle/
	$(call green,"[Not Cleaned up]")
