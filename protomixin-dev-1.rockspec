package = "protomixin"
version = "dev-1"
source = {
   url = "git+https://github.com/DarkWiiPlayer/protomixin.git"
}
description = {
   homepage = "https://github.com/DarkWiiPlayer/protomixin",
   license = "Unlicense"
}
build = {
   type = "builtin",
   modules = {
      protomixin = "protomixin.lua",
   }
}
