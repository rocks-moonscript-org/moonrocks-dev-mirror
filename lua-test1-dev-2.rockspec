package = "lua-test1"
version = "dev-2"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
  "lua >= 5.4"
}
build = {
   type = "builtin",
   modules = {
   ["t"] = "t/aaa.lua"
   }
}
