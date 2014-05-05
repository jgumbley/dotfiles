define green
	@tput setaf 2
	@tput bold
	@echo $1
	@tput sgr0
endef

.PHONY: default¬
default: vundles
	$(call green,"[All steps successful]")

.PHONY: vundles
vundles:
	vim +BundleInstall +qall
	$(call green,"[Installed Vundles]")

clean:
	$(call green,"[Not Cleaned up]")
