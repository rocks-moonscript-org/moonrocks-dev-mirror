rockspec_format = "3.0"
package = "hneutil-lua"
version = "dev-9"
source = {
   url = "git://github.com/hneutr/hneutils-lua"
}
description = {
   homepage = "hne.golf",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lua-path >= 0.3"
}
build = {
   type = "builtin",
   modules = {
      hneutil = "src/hneutil/init.lua"
   }
}
test = {
   type = "busted",
   platforms = {
      unix = {
         flags = {
            "--exclude-tags=ssh,git"
         }
      },
      windows = {
         flags = {
            "--exclude-tags=ssh,git,unix"
         }
      }
   }
}
