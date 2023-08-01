package = "botgram"
version = "dev-1"

source = {
 url = "git+ssh://git@github.com/Propagram/botgram.git",
 branch = "main"
}

description = {
 summary = "Lua wrapper for Telegram Bot API",
 detailed = [[
A Lua wrapper for the Telegram Bot API with chat and inline keyboard support.
Compatible with any socket library that supports the LuaSocket request interface.
Compatible with OpenResty using `lapis.nginx.http`. 
]],
 homepage = "https://github.com/Propagram/botgram",
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
  ["botgram"] = "botgram.lua",
 }
}
