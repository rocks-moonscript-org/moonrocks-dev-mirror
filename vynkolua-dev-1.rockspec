package = "vynkolua"
version = "dev-1"
source = {
   url = "git+https://github.com/olan392/vynkolua.git"
}
description = {
   homepage = "https://none",
   license = "https://none"
}
build = {
   type = "builtin",
   modules = {
      ["vynko.init"] = "vynko/init.lua"
   }
}

rockspec_format = "3.0"
