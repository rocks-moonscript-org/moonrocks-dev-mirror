package = "lua-globals"
version = "dev-1"
source = {
   url = "git+https://github.com/Warhammer-Mods/lua-globals"
}
description = {
   detailed = "Prints all Lua globals being declared (written) or accessed (read) by a supplied lua script.",
   homepage = "https://github.com/Warhammer-Mods/lua-globals",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      lua_globals = "lua_globals.lua"
   }
}
