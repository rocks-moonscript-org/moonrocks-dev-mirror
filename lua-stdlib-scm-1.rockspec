package = "lua-stdlib"
version = "scm-1"
source = {
   url = "git://github.com/shawnjb/stdl",
   dir = "src"
}
description = {
   summary = "Module name reserved by Shawn Bragdon",
   detailed = [[
        This is a module name reserved by Shawn Bragdon. It is not intended to be
        used by anyone else.

        Soon to be a collection of useful Lua modules.
   ]],
   homepage = "https://github.com/shawnjb/stdl",
}
dependancies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      stdlib = 'src/stdlib.lua',
   },
}
