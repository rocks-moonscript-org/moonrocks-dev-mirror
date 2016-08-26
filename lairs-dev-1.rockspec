package = "lairs"
version = "dev-1"

source = {
	url = "https://github.com/Romaboy/lairs/raw/master/lairs.tar.gz"
}

description = {
	summary = "Openresty framework",
	homepage = "http://no.homepage/yet",
	maintainer = "Roman Kushin <romadzao@gmail.com>",
	license = "MIT"
}

dependencies = {
	"moonscript",
	"lyaml",
	"lua-cjson",
	"inspect",
	"bcrypt = 2.1-3"
}

build = {
	type = "make",
	build_variables = {
		CFLAGS="$(CFLAGS)",
		LIBFLAG="$(LIBFLAG)",
		LUA_LIBDIR="$(LUA_LIBDIR)",
		LUA_BINDIR="$(LUA_BINDIR)",
		LUA_INCDIR="$(LUA_INCDIR)",
		LUA="$(LUA)",
	},
	install_variables = {
		INST_PREFIX="$(PREFIX)",
		INST_BINDIR="$(BINDIR)",
		INST_LIBDIR="$(LIBDIR)",
		INST_LUADIR="$(LUADIR)",
		INST_CONFDIR="$(CONFDIR)",
	}
}
