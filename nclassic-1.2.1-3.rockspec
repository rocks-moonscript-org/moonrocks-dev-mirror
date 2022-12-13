package = 'nclassic'
version = '1.2.1-3'
source  = {
    url = 'git://github.com/ImpishDeathTech/nclassic',
    tag = 'nclassic-1-2-1'
}

description = {
    summary  = "A tiny class module for Lua, based on rxi/classic to take advantage of some lua 5.4 convensions.",
    detailed = [[
        A tiny class module for Lua, based on rxi/classic to:
            - take advantage of some lua 5.4 convensions
            - minimize the actual class model size
            - externally extend and compare classes
        Includes:
            - An example angle module
    ]],
    homepage = "https://github.com/ImpishDeathTech/nclassic/blob/master/README.md",
    license  = 'MIT'
}
dependencies = {
    "lua >= 5.4"
}
build = {
    type = 'make',
    build_variables = {
        SRC="./1_2_1/nclassic.cxx",
        OBJ="nclassic.o", 
        LIB="nclassic.so", 
        CXX="g++ -std=c++20",
        CFLAGS="$(CFLAGS)",
        LFLAGS="-llua",
        LIBFLAG="$(LIBFLAG)",
        LUA_LIBDIR="$(LUA_LIBDIR)",
        LUA_BINDIR="$(LUA_BINDIR)",
        LUA_INCDIR="$(LUA_INCDIR)",
        LUA="$(LUA)",
    },
    install_variables = {
        OBJ="nclassic.o", 
        LIB="nclassic.so",
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
 },
}
