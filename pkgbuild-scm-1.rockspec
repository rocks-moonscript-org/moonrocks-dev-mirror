package = "pkgbuild"
version = "scm-1"
source = {
   url = "git+https://krei.lambdacreate.com/durrendal/lua-pkgbuild"
}
description = {
   summary = "Extract data from Arch Linux PKGBUILD files, at least properly formatted ones.",
   detailed = "Extract data from Arch Linux PKGBUILD files, at least properly formatted ones.",
   homepage = "https://krei.lambdacreate.com/durrendal/lua-pkgbuild",
   license = "0BSD"
}
dependencies = {
   "lua >= 5.3"
}
supported_platforms = { "linux" }
build = {
   type = "builtin",
   modules = {
      pkgbuild = "src/pkgbuild.lua"
   }
}
