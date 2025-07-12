package = "luastash"
version = "dev-1"
source = {
   url = "git+https://github.com/Desvelao/luastash",
   branch = "main"
}
description = {
   summary = 'Transform data through a Logstash-like pipeline',
   detailed = [[

]],
   homepage = "https://github.com/Desvelao/luastash",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "busted == 2.2.0-1",
   "dkjson == 2.8-1",
   "pipeflow == dev-1"
}
build = {
   type = "builtin",
   modules = {
      ["luastash"] = "luastash.lua"
   }
}
