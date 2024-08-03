rockspec_format = "3.0"
package = "t"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t",
}

description = {
  summary = "`t` type library",
  detailed = [[
pluggable lib to define types fast
]],
  homepage = "https://github.com/luatoolz/t",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "meta",
  "luassert",
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
