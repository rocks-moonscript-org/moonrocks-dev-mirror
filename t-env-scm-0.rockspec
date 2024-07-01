rockspec_format = "3.0"
package = "t-env"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-env",
}

description = {
  summary = "t.env: os env vars interface object for `t` lib",
  detailed = [[
t.env: os env vars interface object for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-env",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-env/issues",
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
