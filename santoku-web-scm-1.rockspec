package = "santoku-web"
version = "scm-1"
rockspec_format = "3.0"

source = {
  url = "git+ssh://git@github.com/broma0/lua-santoku-web.git"
}

description = {
  homepage = "https://github.com/broma0/lua-santoku-web",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "make",
  build_target = "shared",
  install_target = "install",
  build_variables = {
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
    LUA_LIBDIR = "$(LUA_LIBDIR)",
    LUA_BINDIR = "$(LUA_BINDIR)",
    LUA_INCDIR = "$(LUA_INCDIR)",
    LUA = "$(LUA)",
  },
  install_variables  =  {
    INST_PREFIX = "$(PREFIX)",
    INST_BINDIR = "$(BINDIR)",
    INST_LIBDIR = "$(LIBDIR)",
    INST_LUADIR = "$(LUADIR)",
    INST_CONFDIR = "$(CONFDIR)",
  },
}
