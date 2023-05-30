rockspec_format = "3.0"
package = "hneutil-lua"
version = "dev-6"
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
      hneutil = "src/util/init.lua",
      ["hneutil.object"] = "src/util/object.lua",
      ["hneutil.path"] = "src/util/path.lua",
      ["hneutil.string"] = "src/util/string.lua",
      ["hneutil.table"] = "src/util/table.lua"
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
