rockspec_format = "3.0"
package = "kiwi"
version = "scm-1"
source = {
   url = "git+https://github.com/jkl1337/ljkiwi",
}
description = {
   summary = "LuaJIT FFI and Lua binding for the Kiwi constraint solver.",
   detailed = [[
      ljkiwi is a LuaJIT FFI and Lua binding for the Kiwi constraint solver. Kiwi is a fast
      implementation of the Cassowary constraint solving algorithm. ljkiwi provides
      reasonably efficient bindings using the LuaJIT FFI and convential Lua C bindings.]],
   license = "MIT",
   issues_url = "https://github.com/jkl1337/ljkiwi/issues",
   maintainer = "John Luebs",
}
dependencies = {
   "lua >= 5.1",
}

build = {
   type = "make",
   build_variables = {
      CFLAGS = "$(CFLAGS)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LIBFLAG = "$(LIBFLAG)",
      LIB_EXT = "$(LIB_EXTENSION)",
      OBJ_EXT = "$(OBJ_EXTENSION)",
   },
   install_variables = {
      INST_LIBDIR = "$(LIBDIR)",
      INST_LUADIR = "$(LUADIR)",
      LIB_EXT = "$(LIB_EXTENSION)",
   },
}
