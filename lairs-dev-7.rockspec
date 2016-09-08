package = "lairs"
version = "dev-7"
source = {
   url = "https://github.com/Romaboy/lairs/raw/master/lairs.tar.gz"
}
description = {
   summary = "Openresty framework",
   homepage = "https://github.com/Romaboy/lairs",
   license = "MIT",
   maintainer = "Roman Kushin <romadzao@gmail.com>"
}
dependencies = {
   "moonscript", "lyaml", "lua-cjson", "inspect", "bcrypt = 2.1-3"
}
build = {
   type = "make",
   build_variables = {
      CFLAGS = "$(CFLAGS)",
      LIBFLAG = "$(LIBFLAG)",
      LUA = "$(LUA)",
      LUA_BINDIR = "$(LUA_BINDIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_LIBDIR = "$(LUA_LIBDIR)"
   },
   install_variables = {
      INST_BINDIR = "$(BINDIR)",
      INST_CONFDIR = "$(CONFDIR)",
      INST_LIBDIR = "$(LIBDIR)",
      INST_LUADIR = "$(LUADIR)",
      INST_PREFIX = "$(PREFIX)"
   }
}