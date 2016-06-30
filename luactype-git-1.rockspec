package = "luactype"
version = "git-1"
source = {
   url = "git://github.com/mostvotedplaya/Lua-Ctype.git"
}
description = {
   summary = "Character type functions for Lua",
   detailed = [[
      Ctype provides various character type functions for
      helping test or validate data.
   ]],
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
    ctype = "src/ctype.c"
   }
}
