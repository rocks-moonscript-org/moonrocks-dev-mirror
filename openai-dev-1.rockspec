package = "openai"
version = "dev-1"
source = {
   url = "git+https://git@github.com/MrSyabro/lua-openai.git",
   branch = "master",
}
description = {
   homepage = "https://github.com/MrSyabro/lua-openai",
   license = "MIT/X11",
   maintainer = "MrSyabro",
}
dependencies = {
   "lua >= 5.2",
   "luafilesystem",
   "luasocket",
   "luasec",
   "dkjson"
}
build = {
   type = "builtin",
   modules = {openai = "openai.lua"},
}
