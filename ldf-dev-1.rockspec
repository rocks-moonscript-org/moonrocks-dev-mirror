rockspec_format = "3.0"
package = "ldf"
version = "dev-1"
source = {
  url = "https://imagicthecat.thul.fr/fossils/ldf/zip/trunk/ldf-dev.zip"
}

description = {
  summary = [[
Lua Data Format (LDF) is a binary format for the Lua data model.
]],
  detailed = [[
Lua Data Format (LDF) is a binary format for what I call the Lua data model:
tables and values that can build directed graphs, DAGs, trees, lists, etc. 

LuaJIT is the only target at the moment.
  ]],
  homepage = "https://imagicthecat.thul.fr/fossils/ldf",
  license = "MIT"
}

dependencies = {
  "lua == 5.1"
}
