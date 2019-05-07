package = "lua-resty-valid"
version = "scm-1"
source = {
  branch = "master",
  url = "git://github.com/reTsubasa/lua-resty-valid",
}
description = {
  summary  = "valid the args",
  detailed = [[
    valid the args
  ]],
  homepage = "https://github.com/reTsubasa/lua-resty-valid",
  license  = "MIT"
}
dependencies = {
}
build = {
  type    = "builtin",
  modules = {
    ["resty.valid"] = "lib/resty/valid.lua",
  },
}