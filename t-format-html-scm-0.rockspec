rockspec_format = "3.0"
package = "t-format-html"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-format-html",
}

description = {
  summary = "t.format.html: html object interface for `t` lib",
  detailed = [[
t.format.html: html object interface for `t` lib
]],
  homepage = "https://github.com/luatoolz/t-format-html",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-format-html/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "htmlparser >= 0.3.9",
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
