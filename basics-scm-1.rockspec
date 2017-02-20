package = "basics"
version = "scm-1"
source = {
   url = "git+https://github.com/HeinrichHartmann/luabasics"
}
description = {
   homepage = "https://github.com/HeinrichHartmann/luabasics",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      basicio = "basicio.lua",
   }
}
