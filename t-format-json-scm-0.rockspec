rockspec_format = "3.0"
package = "t-format-json"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-format-json",
}

description = {
  summary = "t.format.json: json object interface for `t` lib",
  detailed = [[
t.format.json: json object interface for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-format-json",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-format-json/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "rapidjson",
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
