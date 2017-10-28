package = "luadiffer"
version = "scm-1"
source = {
   url = "git+https://spilt@bitbucket.org/spilt/luadiffer.git"
}
description = {
   detailed = [[
This is a simple lua module for performing diffs on strings or lists of tokens.]],
   homepage = "https://bitbucket.org/spilt/luadiffer",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      diff = "diff.lua"
   }
}
