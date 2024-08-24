rockspec_format = "3.0"
package = "t-format-bson"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-format-bson",
}

description = {
  summary = "t.format.bson: bson object interface for `t` lib",
  detailed = [[
t.format.bson: bson object interface for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-format-bson",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-format-bson/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "lua-mongo",
}

test_dependencies = {
  "busted",
  "inspect",
}

test = {
  type = "busted",
}

build = {
  copy_directories = {},
  type = "builtin",
}
