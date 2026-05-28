rockspec_format = "3.0"
package = "immut.lua"
version = "scm-0"
source = {
   url = "git://github.com/BlackMATov/immut.lua",
   branch = "main",
}
description = {
   homepage = "https://github.com/BlackMATov/immut.lua",
   summary = "Immutable and persistent data structures for Lua",
   detailed = [[
      `immut.lua` is a lightweight library that provides immutable and persistent data structures for Lua.
   ]],
   license = "MIT",
   labels = {
      "functional",
      "immutable",
      "persistent",
   },
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      immut = "immut.lua",
   }
}
