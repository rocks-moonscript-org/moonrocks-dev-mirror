package = "forget"
version = "scm-1"
source = {
   url = "https://github.com/raingloom/forget"
}
description = {
   homepage = source.url,
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      init = "init.lua"
   }
}
