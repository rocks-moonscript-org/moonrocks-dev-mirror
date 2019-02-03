package = "curves"
version = "scm-1"
source = {
   url = "git+https://gitlab.com/stdgregwar/sol-curves",
}
description = {
   homepage = "https://gitlab.com/stdgregwar/sol-curves",
   detailed = [[
      Curves is a library for animation and easing dedicated to the solarus engine.
   ]],
   license = "GPLv3"
}
dependencies = {
   "lua 5.1"
}
build = {
   type = "builtin",
   modules = {
      curves = "curves.lua"
   }
}
