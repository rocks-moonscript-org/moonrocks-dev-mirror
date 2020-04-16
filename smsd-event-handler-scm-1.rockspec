package = "smsd-event-handler"
version = "scm-1"
source = {
	url = "git+https://gitlab.com/rychly/smsd-event-handler.git",
	branch = "master"
}
description = {
	summary = "Handler and processors for SMS events produced by SMS Server Tools 3 (smstools3).",
	detailed = "",
	homepage = "https://gitlab.com/rychly/smsd-event-handler",
	license = "GNU/GPLv3"
}
dependencies = {
	"lua = 5.1",
	"smsd-helpers",
	"handler-helpers",
	"luafilesystem",
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
