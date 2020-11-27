package = "atomas"
version = "dev-1"
source = {
   url = "git+https://github.com/Cvar1984/atomas"
}
description = {
   license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      atom = "src/atom.lua"
   }
}
