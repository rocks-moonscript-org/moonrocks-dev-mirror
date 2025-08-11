rockspec_format = "3.0"
package = "t-format-mp"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-format-mp",
}

description = {
  summary = "t.format.mp: MessagePack object interface for `t` lib",
  detailed = [[
t.format.mp: MessagePack object interface for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-format-mp",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-format-mp/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "lua-messagepack",
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
