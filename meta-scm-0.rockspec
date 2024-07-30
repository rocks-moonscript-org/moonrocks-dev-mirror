rockspec_format = "3.0"
package = "meta"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/meta",
}

description = {
  summary = "lua meta methods library",
  detailed = [[
- recursive autoloader supporting dots in module names: `require "t/seo/google.com"`
- module function library
- instance/type meta methods manipulations with caching
- non-object style mt creation
- mt cache with auto type naming using relative module path
- mt chaining, computed js-like properties
]],
  homepage = "https://github.com/luatoolz/meta",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/meta/issues",
  maintainer = "luatoolz@somahorse.com"
}

dependencies = {
  "lua >= 5.1",
  "paths",
  "compat53",
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
