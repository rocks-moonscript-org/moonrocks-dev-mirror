package = "lua-xwiimote"
rockspec_format = "3.0"
version = "dev-2"
source = {
   url = "git://github.com/v1993/lua-xwiimote"
}

description = {
   summary = 'Lua bindings to XWiimote linux stack',
   homepage = "https://github.com/v1993/lua-xwiimote",
   issues_url = "https://github.com/v1993/lua-xwiimote/issues",
   license = "MIT/X11",
   labels = { 'linux', 'game', 'joystick' }
}

supported_platforms = { 'linux' }

dependencies = {
   "lua >= 5.3, < 5.4"
}

build = {
	type = "cmake",
	variables = {
		CMAKE_BUILD_TYPE="Release",
		LUA_INCDIR="$(LUA_INCDIR)",
		LUA="$(LUA)",
		CMAKE_INSTALL_PREFIX="$(PREFIX)"
	},
}
