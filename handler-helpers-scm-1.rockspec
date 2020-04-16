package = "handler-helpers"
version = "scm-1"
source = {
	url = "git+https://gitlab.com/rychly/handler-helpers.git",
	branch = "master"
}
description = {
	summary = "Lua module with helpers for an event handler dispatching the event processing to various processors.",
	detailed = "",
	homepage = "https://gitlab.com/rychly/handler-helpers",
	license = "GNU/GPLv3"
}
dependencies = {
	"lua >= 5.1",
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
