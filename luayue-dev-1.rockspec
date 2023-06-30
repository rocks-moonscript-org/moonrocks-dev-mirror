package = "luayue"
version = "dev-1"
source = {
    url = "git+https://github.com/Frityet/luayue.git",
    branch = "master"
}
description = {
    homepage = "https://github.com/yue/yue",
    license = "LGPLv3"
}
dependencies = {
    "lua >= 5.1, < 5.5"
}
build = {
    type = "make",
    makefile = "Makefile",
    build_variables = {
        CFLAGS = "$(CFLAGS)",
        LIBFLAG = "$(LIBFLAG)",
        LUA_LIBDIR = "$(LUA_LIBDIR)",
        LUA_BINDIR = "$(LUA_BINDIR)",
        LUA_INCDIR = "$(LUA_INCDIR)",
        LUA = "$(LUA)",
        CURL = "$(CURL)",
        YUE_VERSION = "0.13.13",
    },
    install_variables = {
        INST_PREFIX = "$(PREFIX)",
        INST_BINDIR = "$(BINDIR)",
        INST_LIBDIR = "$(LIBDIR)",
        INST_LUADIR = "$(LUADIR)",
        INST_CONFDIR = "$(CONFDIR)",
    },
}
