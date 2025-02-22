rockspec_format = "3.0"
package = "LuaResolver"
version = "scm-0"
source = {
	url = "git+https://github.com/luatoolz/luaresolver",
}
description = {
	summary = "A simple DNS resolver written entirely in Lua",
	detailed = [[ A simple DNS resolver written entirely in Lua.
It doesn't need bit operations and is therefore compatible with Lua5.1, Lua5.2 and LuaJIT.
The only dependency is LuaSocket.
	]],
	homepage = "https://github.com/luatoolz/luaresolver",
	license = "LGPL"
}
dependencies = {
	"lua >= 5.1",
  "luasocket",
}
build = {
  type = "builtin",
  modules = {
    ["dns.parser"] = "dns/parser.lua",
    ["dns.resolver"] = "dns/resolver.lua",
  },
}