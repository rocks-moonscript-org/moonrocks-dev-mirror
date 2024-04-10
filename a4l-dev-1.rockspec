package = "a4l"
version = "dev-1"
source = {
   url = "git+https://github.com/byteveil/a4l.git"
}
description = {
   summary = "Manipulate tables in the Lua programming language.",
   detailed = "Manipulate tables in the Lua programming language.",
   homepage = "https://github.com/byteveil/a4l",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      a4l = "a4l.lua"
   }
}
