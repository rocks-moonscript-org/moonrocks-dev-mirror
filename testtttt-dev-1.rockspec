package = "testtttt"
version = "dev-1"
source = {
   url = "git+https://github.com/FreddieOffice/testtttt.git"
}
description = {
   homepage = "https://github.com/FreddieOffice/testtttt",
   license = ""
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      testrock = "testtttt.lua"
   }
}
