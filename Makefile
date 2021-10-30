
SHELL := bash
SHARE := ~/.local/share/krita/

install:
	mkdir -p $(SHARE)patterns
	mkdir -p $(SHARE)brushes
	mkdir -p $(SHARE)paintoppresets
	ln patterns/* $(SHARE)patterns
	ln brush\ tips/* $(SHARE)brushes
	ln V2.0\ alpha\ brush\ presets/* $(SHARE)paintoppresets/
	ln V2.0\ experimental\ WIP\ brush\ presets/* $(SHARE)paintoppresets/
uninstall:
	$(SHELL) uninstall.sh
