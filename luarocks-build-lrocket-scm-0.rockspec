package = "luarocks-build-lrocket"
version = "scm-0"
source = {
   url = "https://codeberg.org/lrocket/luarocks-build-lrocket/archive/main.zip",
   dir = "luarocks-build-lrocket"
}
description = {
   homepage = "https://codeberg.org/lrocket/luarocks-build-lrocket",
   license = "MIT"
}

build = {
   type = "lr-hooks",
   modules = {
      ["luarocks.build.lrocket"] = "luarocks/build/lrocket.lua",
      ["luarocks.hooks.50-lrocket-build"] = "luarocks/hooks/hook-build.lua"
   }
}

dependencies = {
   'luarocks-build-lr-hooks'
}
