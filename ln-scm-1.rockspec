package = "ln"
version = "scm-1"
source = {
   url = "git+https://tulpa.dev/cadey/lua-ln"
}
description = {
   homepage = "https://tulpa.dev/cadey/lua-ln",
   license = "0bsd",
   summary = "The natural log function"
}
dependencies = {
   "lua ~> 5.3",
   "dkjson"
}
build = {
   type = "builtin",
   modules = {
      ln = "src/ln.lua"
   }
}
