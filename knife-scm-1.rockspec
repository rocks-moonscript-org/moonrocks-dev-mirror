rockspec_format = "3.0"
package = "knife"
version = "scm-1"
source = {
   url = "git+https://github.com/airstruck/knife.git",
   branch = "master",
}
description = {
   summary = "A collection of useful micro-modules for Lua.",
   homepage = "https://github.com/airstruck/knife",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["knife.base"] = "knife/base.lua",
      ["knife.behavior"] = "knife/behavior.lua",
      ["knife.bind"] = "knife/bind.lua",
      ["knife.chain"] = "knife/chain.lua",
      ["knife.convoke"] = "knife/convoke.lua",
      ["knife.event"] = "knife/event.lua",
      ["knife.memoize"] = "knife/memoize.lua",
      ["knife.serialize"] = "knife/serialize.lua",
      ["knife.system"] = "knife/system.lua",
      ["knife.test"] = "knife/test.lua",
      ["knife.timer"] = "knife/timer.lua",
   },
   copy_directories = {
      "readme",
      "spec",
   },
}
test = {
   type = "command",
   script = "knife/test.lua",
   flags = {
      "spec/base.lua",
      "spec/behavior.lua",
      "spec/bind.lua",
      "spec/chain.lua",
      "spec/convoke.lua",
      "spec/event.lua",
      "spec/memoize.lua",
      "spec/serialize.lua",
      "spec/system.lua",
      "spec/test.lua",
      "spec/timer.lua",
   }
}
