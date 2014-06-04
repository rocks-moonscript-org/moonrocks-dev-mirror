source = {
  url = "git://github.com/rrthomas/lua-stdlib.git",
}
description = {
  homepage = "http://github.com/rrthomas/lua-stdlib/",
  license = "MIT/X11",
  summary = "General Lua libraries",
  detailed = "    stdlib is a library of modules for common programming tasks,\
    including list, table and functional operations, regexps, objects,\
    pickling, pretty-printing and getopt.\
 ",
}
build = {
  copy_directories = {
  },
  build_command = "autoreconf -i && LUA=$(LUA) CPPFLAGS=-I$(LUA_INCDIR) ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make",
  install_command = "make install",
  type = "command",
}
package = "stdlib"
version = "git-1"
dependencies = {
  "lua >= 5.1",
}
