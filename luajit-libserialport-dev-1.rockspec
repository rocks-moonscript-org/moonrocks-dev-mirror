package = "luajit-libserialport"
version = "dev-1"
source = {
   url = "git+ssh://git@github.com/cnjhb/luajit-libserialport.git"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      libserialport = "libserialport.lua"
   }
}
