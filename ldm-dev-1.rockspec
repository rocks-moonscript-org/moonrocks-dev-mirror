rockspec_format = "3.0"
package = "ldm"
version = "dev-1"
source = {
  url = "https://imagicthecat.thul.fr/fossils/ldm/zip/trunk/ldm-dev.zip"
}

description = {
  summary = [[
Module to help working with what I call the Lua Data Model (persistence,
exchange, etc.).
]],
  detailed = [[
LDM (Lua Data Model) aims to be a module to help working with what I call the
*Lua data model*: tables and values that build directed graphs, DAGs, trees,
lists, etc. It is mostly about persisting and exchanging said data.

LuaJIT is the only target.
  ]],
  homepage = "https://imagicthecat.thul.fr/fossils/ldm",
  license = "MIT"
}

dependencies = {
  "lua == 5.1"
}
