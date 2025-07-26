package = "neotest-bun"
version = "scm-1"
source = {
   url = "git+ssh://git@github.com/jutonz/neotest-bun.git"
}
description = {
   summary = "A neotest adapter for bun",
   homepage = "https://github.com/jutonz/neotest-bun",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1",
  "xml2lua",
}
build = {
   type = "builtin",
   modules = {
      ["neotest-bun.config"] = "lua/neotest-bun/config.lua",
      ["neotest-bun.init"] = "lua/neotest-bun/init.lua",
      ["neotest-bun.main"] = "lua/neotest-bun/main.lua",
      ["neotest-bun.state"] = "lua/neotest-bun/state.lua",
      ["neotest-bun.util.bun"] = "lua/neotest-bun/util/bun.lua",
      ["neotest-bun.util.log"] = "lua/neotest-bun/util/log.lua"
   },
   copy_directories = {
      "doc",
      "tests"
   }
}
