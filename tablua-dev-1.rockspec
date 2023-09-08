package = "tablua"
version = "dev-1"
source = {
   url = "https://github.com/luiz734/tablua" -- We don't have one yet
}
description = {
   summary = "A lua module for print tables nicely.",
   detailed = [[A lua module for print tables nicely.]],
   homepage = "A lua module for print tables nicely.", -- We don't have one yet
   license = "GPL-3.0" -- or whatever you like
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      tablua = "tablua.lua"
   }
}