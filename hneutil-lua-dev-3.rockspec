package = "hneutil-lua"
version = "dev-3"
source = {
   url = "git://github.com/hneutr/hneutils-lua"
}
description = {
   homepage = "hne.golf",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      hneutil = "src/util/init.lua",
      ["hneutil.path"] = "src/util/path.lua",
      ["hneutil.string"] = "src/util/string.lua",
      ["hneutil.table"] = "src/util/table.lua"
   }
}
