package = "random"
version = "dev-1"
source = {
   url = "git+https://github.com/hjpotter92/lua-random.git"
}
description = {
   homepage = "https://github.com/hjpotter92/lua-random",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      random = "random.lua"
   }
}
