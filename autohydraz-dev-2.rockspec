package = "autohydraz"
version = "dev-2"
source = {
   url = "git://github.com/daelvn/autohydraz"
}
description = {
   summary = "The grace of hydraz, contained in your Linux desktop",
   homepage = "https://github.com/daelvn/autohydraz",
   license = "Unlicense"
}
dependencies = {
  "lgi",
  "randbytes",
  "lua >= 5.0"
}
build = {
   type = "builtin",
   modules = {
      ["autohydraz.libhydraz"] = "autohydraz/libhydraz.lua"
   },
   install = {
      bin = {
        cronhydraz = "autohydraz/cronhydraz.lua"
      }
   }
}
