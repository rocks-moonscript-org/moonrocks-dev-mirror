package = "loadconf"
version = "scm-1"
source = {
   url = "git://github.com/Alloyed/loadconf"
}
description = {
   homepage = "https://github.com/Alloyed/loadconf",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      loadconf = "loadconf.lua"
   }
}
