STOW := stow
TARGET := $(HOME)
PACKAGE := config

.PHONY: adopt install update preview remove

adopt:
	$(STOW) --target="$(TARGET)" --adopt $(PACKAGE)
	git diff --exit-code

install:
	$(STOW) --target="$(TARGET)" --restow $(PACKAGE)

update:
	git pull
	$(STOW) --target="$(TARGET)" --restow $(PACKAGE)

preview:
	$(STOW) --simulate --verbose --target="$(TARGET)" $(PACKAGE)

remove:
	$(STOW) --delete --target="$(TARGET)" $(PACKAGE)
