rockspec_format = "3.0"
package = "atpath"
version = "dev-1"
source = {
   url = "git+https://github.com/Rinkaa/atpath.lua.git",
   branch = "main",
}
description = {
   homepage = "https://github.com/Rinkaa/atpath.lua",
   license = "MIT"
}
dependencies = {
}
build = {
   type = "builtin",
   modules = {
      ["atpath"] = "atpath.lua",
   }
}
test = {
   type = "busted",
}

