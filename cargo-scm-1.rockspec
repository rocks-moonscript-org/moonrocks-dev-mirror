rockspec_format = "3.0"
package = "cargo"
version = "scm-1"
source = {
   url = "git+https://github.com/bjornbytes/cargo.git",
   branch = "master",
}
description = {
   summary = "LÖVE asset manager",
   homepage = "https://github.com/bjornbytes/cargo",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      ["cargo"] = "cargo.lua",
   }
}

