package = "wss-lua"
version = "dev-2"

source = {
   url= "git://github.com/H401217/wss-lua",
   tag = "main"
}

description = {
   homepage = "https://github.com/H401217/wss-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 3.1"
}
build = {
   type = "builtin",
   modules = {
      ["wss-lua"] = "wss-lua.lua"
   }
}
