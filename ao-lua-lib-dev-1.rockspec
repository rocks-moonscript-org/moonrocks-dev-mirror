package = "ao-lua-lib"
version = "dev-1"
source = {
   url = "git+https://github.com/permaweb/ao-lua-lib"
}
description = {
   summary = "# Purpose",
   detailed = [[


# Purpose]],
   homepage = "https://github.com/permaweb/ao-lua-lib",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["api.index"] = "api/index.lua",
      ["api.receive"] = "api/receive.lua",
      ["api.send"] = "api/send.lua",
      ["api.spawn"] = "api/spawn.lua",
      ["common.either"] = "common/either.lua",
      main = "main.lua"
   }
}
