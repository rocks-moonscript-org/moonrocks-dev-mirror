package = "argy"
version = "dev-2"
source = {
   url = "git+https://github.com/Pogwat/argy.git"
}
description = {
   summary = "Simple Lua arg parser.",
   detailed = "Simple Lua arg parser. Supports flags, Arguments, Positional Arguments and Help Generation",
   homepage = "https://github.com/Pogwat/argy",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      argy = "argy.lua",
      ["argy.help"] = "optionals/help.lua"
   }
}