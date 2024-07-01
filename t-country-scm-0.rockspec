rockspec_format = "3.0"
package = "t-country"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-country",
}

description = {
  summary = "t.country: country object for `t` lib",
  detailed = [[
t.country: country object for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-country",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-country/issues",
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
