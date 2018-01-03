package = "MD5"
version = "dev-1"
source = {
   url = "git://github.com/keplerproject/md5",
}
description = {
   summary = "Basic cryptographic library",
   detailed = [[
      MD5 offers basic cryptographic facilities for Lua 5.X:
      a hash (digest) function, a pair crypt/decrypt based on MD5 and CFB,
      and a pair crypt/decrypt based on DES with 56-bit keys.
   ]],
   license = "MIT/X11",
   homepage = "http://www.keplerproject.org/md5/",
}
dependencies = {
   "lua >= 5.0"
}
build = {
   type = "builtin",
   modules = {
      md5 = "src/md5.lua",
      ["md5.core"] = {
         sources = { "src/compat-5.2.c", "src/md5.c", "src/md5lib.c", },
         incdirs = { "src/", },
      },
      des56 = {
         sources = { "src/compat-5.2.c", "src/des56.c", "src/ldes56.c", },
         incdirs = { "src/", },
      },
   },
   copy_directories = { "doc", "tests", },
}
