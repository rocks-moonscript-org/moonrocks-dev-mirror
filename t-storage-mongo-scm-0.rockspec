rockspec_format = "3.0"
package = "t-storage-mongo"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-storage-mongo",
}

description = {
  summary = "t.storage.mongo: mongodb object interface for `t` lib",
  detailed = [[
t.storage.mongo: mongodb object interface for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-storage-mongo",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-storage-mongo/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "t-env",
  "t-format-json",
  "lua-mongo",
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
