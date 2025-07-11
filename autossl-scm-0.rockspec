rockspec_format = "3.0"
package = "autossl"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/autossl",
}

description = {
  summary = "autossl: multidomain nginx+lua+resty.asme.autossl env autoconfig",
  detailed = [[
multidomain nginx+lua+resty.asme.autossl env autoconfig
]],
  homepage = "https://github.com/luatoolz/autossl",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/autossl/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "lua-resty-acme",
  "luaossl",
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
