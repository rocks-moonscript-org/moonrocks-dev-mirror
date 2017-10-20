package = "lua-resty-execvp"
version = "scm-1"
source = {
   url = "git+https://github.com/3scale/lua-resty-execvp.git"
}
description = {
   summary = "lua-resty-execvp - execvp FFI wrapper",
   detailed = "lua-resty-execvp - FFI wrapper to call exec and replace current process",
   homepage = "https://github.com/3scale/lua-resty-execvp",
   license = "Apache License 2.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.execvp"] = "src/resty/execvp.lua"
   }
}
