rockspec_format = "3.0"
package = "t-def"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-def",
}

description = {
  summary = "t.def: definer objects interface for `t` lib",
  detailed = [[
t.def: definer objects interface for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-def",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-def/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "t-format-json",
  "t-format-bson",
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
