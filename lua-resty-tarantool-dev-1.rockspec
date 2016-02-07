package = "lua-resty-tarantool"
version = "dev-1"

source = {
  url = "git://github.com/hengestone/lua-resty-tarantool.git"
}

description = {
  summary = "Openresty library for querying the tarantool NoSQL database",
  homepage = "https://github.com/perusio/lua-resty-tarantool",
  maintainer = "Conrad Steenberg <conrad.steenberg@gmail.com>",
  license = "MIT"
}

dependencies = {
  "lua ~> 5.1",

  "luabitop",
  "lua-messagepack",
}

build = {
  type = "builtin",
  modules = {
    ["resty/tarantool"] = "lib/resty/tarantool.lua",
  }
}

