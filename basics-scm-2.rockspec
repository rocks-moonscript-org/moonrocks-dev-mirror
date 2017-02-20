package = "basics"
version = "scm-2"
source = {
   url = "git+https://github.com/HeinrichHartmann/luabasics"
}
description = {
   homepage = "https://github.com/HeinrichHartmann/luabasics",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1",
   "lua-cjson >= 2.1.0-1",
   "serpent >= 0.28-1",
}
build = {
   type = "builtin",
   modules = {
      basicio = "basicio.lua",
      basicmod = "basicmod.lua",
   }
}
