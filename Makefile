.PHONY: help
help:
	@echo "install   : install   sugar, sugar.1, sugar.*"
	@echo "uninstall : uninstall sugar, sugar.1, sugar.*"

.PHONY: install
install: sugar sugar.1 sugar.mkautos sugar.imports
	@echo Installing sugar, sugar.1, sugar.*...
	@install -o root -g root -m 755 sugar          /bin/sugar
	@install -o root -g root -m 644 sugar.1        /usr/share/man/man1/sugar.1
	@install -o root -g root -m 755 sugar.mkautos  /bin/sugar.mkautos
	@install -o root -g root -m 755 sugar.imports  /bin/sugar.imports
	@install -o root -g root -m 755 sugar.lib      /bin/sugar.lib

.PHONY: uninstall
uninstall:
	@echo Removing sugar, sugar.1, sugar.*...
	@rm -f /bin/sugar
	@rm -f /usr/share/man/man1/sugar.1
	@rm -f /bin/sugar.mkautos
	@rm -f /bin/sugar.imports
	@rm -f /bin/sugar.lib
