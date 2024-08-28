rockspec_format = "3.0"
package = "t-nginx-auto"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-nginx-auto",
}

description = {
  summary = "t.nginx.auto: nginx auto req/resp object interface for `t` lib",
  detailed = [[
t.nginx.auto: nginx auto req/resp object interface for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-nginx-auto",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-nginx-auto/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t-format-json",
  "t",
  "t-def",
}

test_dependencies = {
  "busted",
  "luacheck",
  "t-storage-mongo",
}

test = {
  type = "command",
  command = "prove",
}

build = {
  copy_directories = {},
  type = "builtin",
}
