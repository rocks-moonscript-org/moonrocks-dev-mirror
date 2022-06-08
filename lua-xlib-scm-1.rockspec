-- kak: filetype=lua
package = "lua-xlib"
version = "scm-1"

source = {
    url = "git://github.com/sclu1034/lua-xlib.git"
}

description = {
    summary = "Lua bindings for XLib and XRandR",
    homepage = "https://github.com/sclu1034/lua-xlib",
    license = "GPLv3"
}

dependencies = {
    "lua >= 5.1"
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
        PROFILE="release",
    },
    install_variables = {
        PREFIX="$(PREFIX)",
        INSTALL_BINDIR="$(BINDIR)",
        INSTALL_LIBDIR="$(LIBDIR)",
        INSTALL_LUADIR="$(LUADIR)",
        INSTALL_CONFDIR="$(CONFDIR)",
        INSTALL_DOCDIR="$(DOCDIR)",
    },
    copy_directories = {
        "spec"
    }
}
