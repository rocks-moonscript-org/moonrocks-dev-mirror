package = "lua-ranges"
version = "dev-1"
source = {
   url = "git+https://github.com/TOWHGOS/lua-ranges"
}
description = {
   summary = "A Linq-like lib",
   homepage = "https://github.com/TOWHGOS/lua-ranges",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ranges = "src/ranges.lua"
   }
}
