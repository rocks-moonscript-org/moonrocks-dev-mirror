package = "lump"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/FreeMasen/lump",
   tag = "dev-1",
}
description = {
   summary = "A pool collection for cosock",
   detailed = [[
A pool collection for cosock
]],
   homepage = "https://github.com/FreeMasen/lump",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "logface >= 0.0.2",
}
build = {
   type = "builtin",
   modules = {
      ["lump"] = "lump/init.lua"
   },
}
