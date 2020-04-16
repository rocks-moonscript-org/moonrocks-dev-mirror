package = "uhttpd-lua-utils"
version = "scm-1"
source = {
	url = "git+https://gitlab.com/rychly/uhttpd-lua-utils.git",
	branch = "master"
}
description = {
	summary = "Lua handler and request module for uHTTPd webserver.",
	detailed = "",
	homepage = "https://gitlab.com/rychly/uhttpd-lua-utils",
	license = "GNU/GPLv3"
}
dependencies = {
	"lua = 5.1",
	"handler-helpers",
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
