rockspec_format = "3.0"
package = "lurker"
version = "scm-1"
source = {
   url = "git+https://github.com/rxi/lurker.git",
   branch = "master",
}
description = {
   summary = "Auto-swaps changed Lua files in a running LÖVE project",
   homepage = "https://github.com/rxi/lurker",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "lume",
}
build = {
   type = "builtin",
   modules = {
      ["lurker"] = "lurker.lua",
   },
}
