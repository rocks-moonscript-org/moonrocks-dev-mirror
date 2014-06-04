package="lua-sophia"
version="scm-1"
source = {
   url = "git://github.com/mkottman/lua-sophia",
}
description = {
   summary = "Lua binding to Sophia embeddable key-value database",
   detailed = [[
      lua-sophia is a Lua binding to Sophia embeddable key-value database. The
      database stores only Lua string keys and values, for storing more
      complex types use a serialization library, such as MessagePack. See the
      documentation at http://mkottman.github.com/lua-sophia
   ]],
   homepage = "https://github.com/mkottman/lua-sophia",
   license = "MIT/X11"
}
dependencies = {
   "lua ~> 5.2"
}
external_dependencies = {
   SOPHIA = {
      header = "sophia.h",
      library = "sophia",
   }
}
build = {
   type = "builtin",
   modules = {
      sophia = {
         sources = "lua-sophia.c",
         libdirs = "$(SOPHIA_LIBDIR)",
         incdirs = "$(SOPHIA_INCDIR)",
         libraries = "sophia",
      }
   },
}
