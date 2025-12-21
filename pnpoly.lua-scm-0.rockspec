rockspec_format = "3.0"
package = "pnpoly.lua"
version = "scm-0"
source = {
   url = "git://github.com/BlackMATov/pnpoly.lua",
   branch = "main",
}
description = {
   homepage = "https://github.com/BlackMATov/pnpoly.lua",
   summary = "Point Inclusion in Polygon Test",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      pnpoly = "pnpoly.lua",
   }
}
