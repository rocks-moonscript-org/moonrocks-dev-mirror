package = "testrock"
version = "dev-1"
source = {
   url = "git+https://github.com/luarocks/testrock.git"
}
description = {
   homepage = "https://github.com/luarocks/testrock",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      testrock = "testrock.lua"
   }
}
