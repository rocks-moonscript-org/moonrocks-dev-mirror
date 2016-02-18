package = "lapis-tarantool"
version = "dev-1"

source = {
  url = "git://github.com/hengestone/lapis-tarantool.git"
}

description = {
  summary = "Tarantool integration with lapis",
  license = "MIT",
  maintainer = "Conrad Steenberg <conrad.steenberg@gmail.com>",
}

dependencies = {
  "lua-resty-tarantool",
  "lapis"
}

build = {
  type = "builtin",
  modules = {
    ["lapis.tarantool"] = "lapis/tarantool.lua",
  }
}

