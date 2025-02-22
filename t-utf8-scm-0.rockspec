rockspec_format = "3.0"
package = "t-utf8"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-utf8",
}

description = {
  summary = "t.utf8: utf8 interface for `t` lib",
  detailed = [[
t.utf8: utf8 interface for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-utf8",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-utf8/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "luautf8",
}

test_dependencies = {
  "busted",
}

test = {
  type = "busted",
}

build = {
  copy_directories = {},
  type = "builtin",
}
