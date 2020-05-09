package = "lua-gdrive"
version = "scm-1"
source = {
	url = "git+https://gitlab.com/rychly/lua-gdrive.git",
	branch = "master"
}
description = {
	summary = "Google Drive access module for lua.",
	detailed = "",
	homepage = "https://gitlab.com/rychly/lua-gdrive",
	license = "MIT"
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"oauth2",
	"net-url",
	"luajson"
}
build = {
	type = "make",
	build_variables = {
		CFLAGS = "$(CFLAGS)",
		LIBFLAG = "$(LIBFLAG)",
		LUA_LIBDIR = "$(LUA_LIBDIR)",
		LUA_BINDIR = "$(LUA_BINDIR)",
		LUA_INCDIR = "$(LUA_INCDIR)",
		LUA = "$(LUA)"
	},
	install_variables = {
		PREFIX = "$(PREFIX)",
		LUA_BINDIR = "$(BINDIR)",
		LUA_LIBDIR = "$(LIBDIR)",
		LUA_LUADIR = "$(LUADIR)",
		LUA_CONFDIR = "$(CONFDIR)"
	}
}
