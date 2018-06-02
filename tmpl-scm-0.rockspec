package = "tmpl"
version = "scm-0"
source = {
   url = "git+https://github.com/ii8/tmpl.git"
}
description = {
   summary = "Tiny lua templates",
   homepage = "https://github.com/ii8/tmpl",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.3"
}
build = {
   type = "builtin",
   modules = {
      tmpl = "tmpl.lua"
   }
}
