package = "lua-TestClass"
version = "scm-0"

source = {
   url = "https://github.com/ichesnokov/lua-TestClass/archive/master.zip",
   dir = "lua-TestClass-master",
}

description = {
   summary = "xUnit-style testing framework for Lua",
   homepage = "https://github.com/ichesnokov/lua-TestClass",
   license = "MIT/X11"
}

dependencies = {
    "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["Test.Class"] = "lib/Test/Class.lua",
      ["File.Find"] = "lib/File/Find.lua",
   }
}
