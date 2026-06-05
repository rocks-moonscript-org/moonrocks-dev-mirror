package = "timeutil"
version = "scm-1"

source = {
  url = "git+https://github.com/BlueLua/timeutil.git",
  branch = "main",
}

description = {
  summary = "Small standalone wall-clock, monotonic time, and native sleep module for Lua",
  detailed = [[
timeutil is a small standalone C-backed Lua module that exposes wall-clock
time, monotonic elapsed time, and native blocking sleep in seconds.
  ]],
  homepage = "https://github.com/BlueLua/timeutil",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    timeutil = {
      sources = { "src/timeutil.c" },
    },
  }
}
