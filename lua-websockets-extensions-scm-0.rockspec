package = "lua-websockets-extensions"
version = "scm-0"

source = {
  url = "git://github.com/moteus/lua-websockets-extensions.git",
}

description = {
  summary = "WebSocket extensions manager",
  homepage = "http://github.com/moteus/lua-lluv-websocket",
  license = "MIT/X11",
  detailed = ""
}

dependencies = {
  "lua >= 5.1, < 5.4",
}

build = {
  type = "builtin",

  modules = {
    ['websocket.extensions'] = 'src/websocket/extensions.lua',
  }
}
