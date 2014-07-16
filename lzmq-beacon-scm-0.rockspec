package = "lzmq-beacon"
version = "scm-0"

source = {
  url = "https://github.com/moteus/lzmq-beacon/archive/master.zip",
  dir = "lzmq-auth-master",
}

description = {
  summary  = "Module for ZMQ LAN discovery",
  homepage = "https://github.com/moteus/lzmq-beacon",
  license  = "MIT/X11",
}

dependencies = {
  "lua >= 5.1, < 5.3",
  -- "lzmq >= 0.4.0" or "lzmq.ffi >= 0.4.0",
  -- "lua-llthreads2 > 3.1"
}

build = {
  copy_directories = {"test"},

  type = "builtin",

  modules = {
    [ "lzmq.beacon" ] = "src/lua/lzmq/beacon.lua";
  },
}
