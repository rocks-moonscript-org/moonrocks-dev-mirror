package = "hello-world"
version = "dev-1"
source = {
   url = "git+https://gitee.com/lua-rocks/hello-world.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["lua-package"] = "lua-package.lua"
   }
}
