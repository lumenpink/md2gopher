PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin

install:
	$(info Installing the library to $(BINDIR))
	@install -Dm755 .bin/md2gopher.awk  $(BINDIR)/md2gopher

uninstall:
	$(info Removing library from $(BINDIR))
	@rm -f $(BINDIR)/md2gopher

test:
	$(info Running shellspec tests)
	@rm -rf ./coverage
	@shellspec --kcov

.PHONY: install uninstall test
