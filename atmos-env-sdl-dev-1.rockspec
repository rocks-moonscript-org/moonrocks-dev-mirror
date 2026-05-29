package = "atmos-env-sdl"
version = "dev-1"
source = {
   url = "git+https://github.com/lua-atmos/env-sdl",
   branch = "main",
}
description = {
   summary = "SDL environment for Atmos",
   homepage = "https://github.com/lua-atmos/env-sdl",
   license = "MIT",
}
dependencies = {
   "lua >= 5.4",
   "atmos",
   "lua-sdl2",
}
build = {
   type = "builtin",
   modules = {
      ["atmos.env.sdl.init"] = "init.lua",
      ["atmos.env.sdl.exs.hello"] = "exs/hello.lua",
      ["atmos.env.sdl.exs.across"] = "exs/across.lua",
      ["atmos.env.sdl.exs.click-drag-cancel"] = "exs/click-drag-cancel.lua",
   },
}
