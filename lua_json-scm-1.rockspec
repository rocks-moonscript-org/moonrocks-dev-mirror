package = "lua_json"
version = "scm-1"
source = {
   url = "git://github.com/mbalmer/luajson"
}
description = {
   summary = "A lua binding for JSON",
   detailed = [[A lua binding for JSON]],
   homepage = "http://github.com/mbalmer/luajson",
   license = "3-clause BSD"
}
dependencies = {
   "lua >= 5.1, < 5.3"
}
build = {
   type = "builtin",
   modules = {
      json = {
         sources = "luajson.c"
      }
   }
}
