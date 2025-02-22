rockspec_format = "3.0"
package = "xtype"
version = "dev-1"
source = {
  url = "https://imagicthecat.thul.fr/fossils/xtype/zip/trunk/xtype-dev.zip"
}

description = {
  summary = "A dynamic type system library for Lua.",
  detailed = [[
xtype, or Extended Type, is a dynamic type system library for Lua.
  ]],
  homepage = "https://imagicthecat.thul.fr/fossils/xtype",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, <= 5.4"
}
