rockspec_format = "3.0"
package = "roomy"
version = "scm-1"
source = {
   url = "git+https://github.com/tesselode/roomy.git",
   branch = "master",
}
description = {
   summary = "Scene management for LÖVE.",
   homepage = "https://github.com/tesselode/roomy",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["roomy"] = "roomy.lua",
   }
}
