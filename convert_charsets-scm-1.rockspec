package = "convert_charsets"
version = "scm-1"
source = {
	url = "git+https://gitlab.com/rychly/convert-charsets.git",
	branch = "master"
}
description = {
	summary = "Lua scripts to convert strings between UTF-8 and other charsets and from UTF-8 to ASCII.",
	detailed = "",
	homepage = "https://gitlab.com/rychly/convert-charsets",
	license = "GNU/GPLv2"
}
dependencies = {
	"lua >= 5.1, < 5.4"
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
		INST_PREFIX = "$(PREFIX)",
		INST_BINDIR = "$(BINDIR)",
		INST_LIBDIR = "$(LIBDIR)",
		INST_LUADIR = "$(LUADIR)",
		INST_CONFDIR = "$(CONFDIR)"
	}
}
