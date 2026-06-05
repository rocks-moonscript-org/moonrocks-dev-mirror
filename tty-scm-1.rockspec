package = "tty"
version = "scm-1"

source = {
  url = "git+https://github.com/BlueLua/tty.git",
  branch = "main",
}

description = {
  summary = "Cross-platform Lua bindings for terminal inspection",
  detailed = [[
Small cross-platform Lua bindings for checking whether a file descriptor is a
TTY and for reading terminal dimensions.
  ]],
  homepage = "https://github.com/BlueLua/tty",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    tty = {
      sources = { "src/tty.c" },
    },
  },
}
