package = "gnucrypt"
version = "scm-0"

description = {
	summary = "glibc crypt(3) wrapper",
	homepage = "https://github.com/fnordpipe/lua-gnucrypt",
	license = "MIT",
}

source = {
	url = "git+https://github.com/fnordpipe/lua-gnucrypt.git",
}

dependencies = {
	"lua <= 5.3",
}

build = {
	type = "make",
	install_pass = false,
	build_variables = {
		CFLAGS="$(CFLAGS)",
		LUA="$(LUA)",
		LUA_INCDIR="$(LUA_INCDIR)",
	},
	install = {
		lib = {
			["gnucrypt"] = "gnucrypt.so",
		},
	},
}
