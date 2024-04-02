package = "sfs"
version = "scm-0"
source = {
   url = "https://codeberg.org/sewbacca/sfs/archive/main.zip",
   dir = "sfs",
}
description = {
   homepage = "https://codeberg.org/sewbacca/sfs",
   license = "MIT",
}
build = {
   type = "builtin",
   modules = {
      sfs = "lua/sfs.lua"
   }
}
dependencies = {
   "luafilesystem"
}
