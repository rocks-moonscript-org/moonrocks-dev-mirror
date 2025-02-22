rockspec_format = "3.0"
package = "t-net"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-net",
}

description = {
  summary = "t.net: net objects",
  detailed = [[
t.net: net objects for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-net",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-net/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "public_suffix_list",
  "t",
  "t-env",
  "t-utf8",
  "luaresolver",
  "idn2",
  "net-url",
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
