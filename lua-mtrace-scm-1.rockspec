package = "lua-mtrace"
version = "scm-1"
source = {
   url = "hg+https://code.zash.se/lua-mtrace/"
}
description = {
   homepage = "https://code.zash.se/lua-mtrace/",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      mtrace = {
         sources = "mtrace.c"
      }
   }
}
