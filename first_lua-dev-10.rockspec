package = "first_lua"
version = "dev-10"
source = {
   url = "git+ssh://git@github.com/summer-boythink/first_lua.git"
}
description = {
   homepage = "https://github.com/summer-boythink/first_lua",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      hello = "hello.lua"
   }
}
