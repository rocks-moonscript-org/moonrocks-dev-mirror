rockspec_format = "3.0"
package = "t-number-abbrev"
version = "scm-0"

source = {
  url = "git+https://github.com/luatoolz/t-number-abbrev",
}

description = {
  summary = "t.number.abbrev: numbers abbreviations",
  detailed = [[
t.number.abbrev: define abbreviation rules:
- scale: 1000, 1024, etc
- prefix: '$', '#', etc
- powers: 'm'/'b'/'t' or 'kb'/'mb'/'gb'/etc
- precision / decimals
- arithmetic operands defined: sz("77KB")*10 = sz("770KB")
]],
  homepage = "https://github.com/luatoolz/t-number-abbrev",
  license = "MIT",
  issues_url = "https://github.com/luatoolz/t-number-abbrev/issues",
  maintainer = "luatoolz@somahorse.com",
}

dependencies = {
  "lua >= 5.1",
  "t",
  "t-utf8",
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
