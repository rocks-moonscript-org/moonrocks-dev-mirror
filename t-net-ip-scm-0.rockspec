rockspec_format = "3.0"
package = "t-net-ip"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-net-ip",
}

description = {
  summary = "t.net.ip: ip object",
  detailed = [[
t.net.ip: ip object for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-net-ip",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-net-ip/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
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
