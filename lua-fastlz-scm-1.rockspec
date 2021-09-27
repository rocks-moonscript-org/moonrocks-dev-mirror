package = 'lua-fastlz'
version = 'scm-1'
source = {
   url = 'git+https://github.com/lalawue/lua-fastlz.git'
}
description = {
   summary = 'LZ77 lossless data compression for Lua',
   detailed = 'LZ77 lossless data compression for Lua',
   homepage = 'https://github.com/lalawue/lua-fastlz.git',
   maintainer = 'lalawue <suchaaa@gmail.com>',
   license = 'MIT/X11'
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      fastlz = {
         sources = { "lua-fastlz.c", "fastlz/fastlz.c"},
         incdirs = { "fastlz" }
      },
   }
}
