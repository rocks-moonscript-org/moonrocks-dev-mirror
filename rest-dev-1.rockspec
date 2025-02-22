package = "rest"
version = "dev-1"
source = {
   url = "git+https://git@github.com/MrSyabro/utils.git",
   branch = "master",
}
description = {
   summary = "Simple REST API constructor",
   homepage = "https://github.com/MrSyabro/utils",
   license = "MIT/X11",
   maintainer = "MrSyabro",
}
dependencies = {
   "lua >= 5.2",
   "dkjson",
   "luasocket",
}
build = {
   type = "builtin",
   modules = {
      rest = "lua/rest.lua"
   },
}