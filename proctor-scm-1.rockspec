package = "proctor"
version = "scm-1"
source = {
   url = "git+https://github.com/stillunt1tled/proctor",
   branch = "master"
}
description = {
   detailed = "Lua Proctor is a simple and straight-forward testing library for Lua 5.3, and works with plain lua with no extra libraries.",
   homepage = "https://github.com/stillunt1tled/proctor",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
      proctor = "proctor/init.lua",
      ["proctor.assertions"] = "proctor/assertions.lua",
      ["proctor.runner"] = "proctor/runner.lua",
   }
}
