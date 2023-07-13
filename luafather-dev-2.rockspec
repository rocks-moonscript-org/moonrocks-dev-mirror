package = "luafather"
version = "dev-2"

source = {
 url = "git+ssh://git@github.com/Propagram/luafather.git",
 branch = "main"
}

description = {
 summary = "Lua wrapper for Telegram Bot API",
 detailed = [[
A Lua wrapper for the Telegram Bot API with session support and featuring its own custom DSL.
Compatible with any socket library that supports the LuaSocket request interface.
Compatible with OpenResty using `lapis.nginx.http`. 
]],
 homepage = "https://github.com/Propagram/luafather",
 license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson",
  "luasocket",
  "luasec",
  "lua-lru"
}

build = {
 type = "builtin",
 modules = {
  ["luafather"] = "luafather.lua",
 }
}
