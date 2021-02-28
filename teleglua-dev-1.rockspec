rockspec_format = "3.0"
package = "teleglua"
version = "dev-1"

source = {
 url = "git://github.com/Er2pkg/teleglua.git",
 dir = "tg",
 branch = "main"
}

description = {
 summary = "A small Telegram library, written in Lua.",
 detailed = [[
  This is a small Telegram library, written in Lua, inspired by telegram-bot-lua from wrxck.
  This library is currently under development...
 ]],
 homepage = "https://github.com/Er2pkg/teleglua",
 maintainer = "Er2 <er2@dismail.de>",
 license = "Zlib"
}

dependencies = {
 "lua >= 5.2", "luasec"
}

build = {
 type = "builtin",
 modules = {
  tg = "src/init.lua",
  ["tg.api"] = "src/api.lua",
  ["tg.core"] = "src/core.lua",
  ["tg.json"] = "src/json.lua",
  ["tg.tools"] = "src/tools.lua"
 }
}
