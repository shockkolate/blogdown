BIN_DIR=/usr/local/bin
ETC_DIR=/etc

install:
	mkdir -p "$(BIN_DIR)"
	mkdir -p "$(ETC_DIR)/blogdown"
	cp -fv bin/* "$(BIN_DIR)"
	cp -rfv etc/* "$(ETC_DIR)/blogdown"

uninstall:
	rm -vi "$(BIN_DIR)/blogdown"

purge: uninstall
	rm -rvi "$(ETC_DIR)/blogdown"
