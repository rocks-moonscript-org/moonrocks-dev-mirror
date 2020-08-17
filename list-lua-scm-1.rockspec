package = "list-lua"
version = "scm-1"
source = {
   url = "git+https://github.com/lalawue/list.lua/"
}
description = {
   summary = "double linked list for Lua",
   detailed = [[
       double Linked List for Lua, pure Lua implement
   ]],
   homepage = "https://github.com/lalawue/list.lua",
   license = "MIT/X11"
}
build = {
   type = "builtin",
   modules = {
      list = { "list.lua" }
   }
}
