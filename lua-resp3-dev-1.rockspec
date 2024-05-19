package = "lua-resp3"
version = "dev-1"
source = {
   url = "git+https://github.com/Cinea4678/lua-resp3.git"
}
description = {
   detailed = "This library is used for serializing and deserializing with the RESP3 protocol, and inspired by [smallnest/resp3](https://github.com/smallnest/resp3/) in Go.",
   homepage = "https://github.com/Cinea4678/lua-resp3",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      resp3 = "resp3.lua",
      resp3_test = "resp3_test.lua"
   }
}
