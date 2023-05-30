package = "argon"
version = "scm-1"
source = {
   url = "git://github.com/wfrsk/lua-argon"
}
description = {
   homepage = "https://argon.docs.wfrsk.dev",
   license = "GPL-3.0",
   summary = "Smart, short, and simple CLI (or not!) argument parser for Lua5.X."
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "inspect"
}
build = {
   type = "builtin",
   modules = {
      ["argon"] = "src/index.lua",
   },
   copy = { "doc", "spec" }
}
