package = "luarocks-build-lrocket-next"
version = "scm-0"
source = {
   url = "https://codeberg.org/leso-kn/lrocket-next/archive/main.zip",
   dir = "lrocket-next"
}
description = {
   homepage = "https://codeberg.org/leso-kn/lrocket-next",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["lrocket-next.attac-loader"] = "lrocket-next/attac-loader.lua",
      ["lrocket-next.init"] = "lrocket-next/init.lua",
      ["luarocks.build.lrocket-next"] = "luarocks/build/lrocket-next.lua"
   }
}
dependencies = {
   "luarocks-build-lrocket ~> 1",
   "lrc ~> 1"
}
