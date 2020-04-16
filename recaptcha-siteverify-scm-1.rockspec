package = "recaptcha-siteverify"
version = "scm-1"
source = {
	url = "git+https://gitlab.com/rychly/recaptcha-siteverify.git",
	branch = "master"
}
description = {
	summary = "Lua module to use Google reCAPTCHA user verification.",
	detailed = "",
	homepage = "https://gitlab.com/rychly/recaptcha-siteverify",
	license = "GNU/GPLv3"
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"luasec",
	"dkjson",
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
