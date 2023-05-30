rockspec_format = "3.0"
package = "hnetxt-lua"
version = "dev-3"
source = {
   url = "git://github.com/hneutr/hnetxt-lua"
}
description = {
   homepage = "https://github.com/hneutr/hnetxt-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lyaml >= 6.2",
   "inspect >= 3.1",
   "lua-cjson >= 2.1",
   "luafilesystem >= 1.8",
   "hneutil-lua"
}
build = {
   type = "builtin",
   modules = {
      hnetxt = "src/hnetxt/init.lua",
      setup = "src/setup.lua"
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
