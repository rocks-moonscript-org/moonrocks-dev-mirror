package = "discount"
version = "scm-1"
supported_platforms = {"unix"}

description = {
    summary = "Lua bindings for the Discount Markdown library",
    homepage = "https://github.com/craigbarnes/lua-discount",
    license = "ISC"
}

source = {
    url = "git+https://gitlab.com/craigbarnes/lua-discount.git",
    branch = "master"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "command",
    build_command = "make CFLAGS='$(CFLAGS)' LIBFLAGS='$(LIBFLAG)' LUA_CFLAGS='-I$(LUA_INCDIR)' LUA='$(LUA)' LUA_PC=none USE_LOCAL_DISCOUNT=1",
    install_command = "make install LUA_CMOD_DIR='$(LIBDIR)' LUA_LMOD_DIR='$(LUADIR)' LUA_PC=none"
}
