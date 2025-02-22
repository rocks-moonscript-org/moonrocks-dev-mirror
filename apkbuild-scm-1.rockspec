package = "apkbuild"
version = "scm-1"
source = {
   url = "git+https://krei.lambdacreate.com/durrendal/lua-apkbuild"
}
description = {
   summary = "An LPEG grammar aimed at parsing Alpine Linux APKBUILD files.",
   detailed = "An LPEG grammar aimed at parsing Alpine Linux APKBUILD files.",
   homepage = "https://krei.lambdacreate.com/durrendal/lua-apkbuild",
   license = "0BSD"
}
dependencies = {
   "lua >= 5.1",
   "lpeg >= 1.0.2"
}
supported_platforms = { "linux" }
build = {
   type = "builtin",
   modules = {
      apkbuild = "src/apkbuild.lua"
   }
}
