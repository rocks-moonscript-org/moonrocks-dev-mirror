package = "hneutil-lua"
version = "dev-2"
source = {
   url = "git://github.com/hneutr/hneutils-lua"
}
description = {
   homepage = "hne.golf",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "busted >= 2.1",
   "lua-cjson >= 2.1"
}
build = {
   type = "builtin",
   modules = {
      hneutil = "src/util.lua",
      ["hneutil.path"] = "src/util/path.lua",
      ["hneutil.string"] = "src/util/string.lua",
      ["hneutil.table"] = "src/util/table.lua"
   }
}
