rockspec_format = "1.1"
package = "metaclass"
version = "scm-1"
source = {
   url = "git+https://gitlab.com/ochaton/metaclass"
}
description = {
   summary = "OOP Framework for Lua",
   homepage = "https://gitlab.com/ochaton/metaclass",
   license = "WTFPL"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["metaclass.containers.Enum"] = "metaclass/containers/Enum.lua",
      ["metaclass.containers.List"] = "metaclass/containers/List.lua",
      ["metaclass.containers.LinkedList"] = "metaclass/containers/LinkedList.lua",
      ["metaclass.containers.init"] = "metaclass/containers/init.lua",
      metaclass = "metaclass.lua"
   }
}
