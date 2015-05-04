package = "lluv-ssl"
version = "scm-0"

source = {
  url = "https://github.com/moteus/lua-lluv-ssl/archive/master.zip",
  dir = "lua-lluv-ssl-master",
}

description = {
  summary    = "Implement SSL/TLS sockets for lluv library.",
  homepage   = "https://github.com/moteus/lua-lluv-lluv",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "lluv > 0.1.1",
  "openssl",
}

build = {
  copy_directories = {'examples', 'test'},

  type = "builtin",

  modules = {
    ["lluv.ssl"          ] = "src/lua/lluv/ssl.lua",
    ["lluv.ssl.luasocket"] = "src/lua/lluv/ssl/luasocket.lua",
  }
}
