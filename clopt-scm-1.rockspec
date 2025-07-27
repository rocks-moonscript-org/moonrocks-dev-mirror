package = "clopt"
version = "scm-1"
source = {
  url = "git+https://github.com/mattmc3/clopt.lua.git"
}
description = {
  summary = "A simple Lua command-line option parser with callbacks.",
  detailed = [[
    clopt is a callback-based command line option parser for Lua.

    It supports:
    - short (-s) and long (--long) options
    - options that take values (--foo bar --bar=baz)
    - grouped short flags (-abc)
    - double dash parsing termination (--foo -- --bar bar_is_positional)
    - user defined callback functions for handling options and validation
    - help text usage output
  ]],
  homepage = "https://github.com/mattmc3/clopt.lua",
  license = "MIT"
}
dependencies = {
}
build = {
  type = "builtin",
  modules = {
    ["clopt"] = "src/clopt.lua"
  }
}
