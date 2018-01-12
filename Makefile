
BIN ?= wpdownload
PREFIX ?= /usr/local

install:
	cp wpdownload.sh $(PREFIX)/bin/$(BIN)

uninstall:
	rm -f $(PREFIX)/bin/$(BIN)
