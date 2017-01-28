package = "lluv-busted"
version = "scm-0"

source = {
  url = "https://github.com/moteus/lua-lluv-busted/archive/master.zip",
  dir = "lua-lluv-busted-master",
}

description = {
  summary    = "Support async tests for busted with lluv library",
  homepage   = "https://github.com/moteus/lua-lluv-busted",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "busted ~> 1",
  "lluv",
}

build = {
  copy_directories = {'spec'},

  type = "builtin",

  modules = {
    [ "lluv.busted.loop" ] = "src/lluv/busted/loop.lua"
  }
}
