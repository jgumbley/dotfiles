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
	touch .vundles.done
	$(call green,"[Installed Vundles]")

clean:
	rm .*.done
	$(call green,"[Not Cleaned up]")
