package = "lzip"
version = "scm-0"

source = {
   url = "git://github.com/avaicode/lzip.git",
}

description = {
   summary = "a tiny ZIP support for Lua",
   detailed = [[
lzip is a tiny ZIP support, which only provides extract function with callback now.
This module implements filesystem for POSIX systems.
]],
   homepage = "https://github.com/avaicode/lzip",
   license = "MIT/X11",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   copy_directories = {},

   type = "builtin",

   modules = {
      lzip = "src/lzip.c",
   }
}
