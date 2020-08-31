package = "netatmo"
version = "scm-3"

source = {
  url = "git://github.com/Tieske/netatmo.lua/",
  --tag = "0.1.0",
  branch = "master",
}

description = {
  summary = "Lua module to provide Netatmo API access",
  detailed = [[
    Library to access the Netatmo REST API.
  ]],
  homepage = "https://github.com/Tieske/netatmo.lua",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "luasec",
  "lua-cjson",
  "lualogging",
}

build = {
  type = "builtin",

  modules = {
    ["netatmo.init"] = "netatmo/init.lua",
  },

}
