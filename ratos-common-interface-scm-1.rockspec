package = "ratOS-common-interface"
version = "scm-1"
source = {
   url = "git+https://github.com/OperRat-Technologies/common-interface",
}
description = {
   summary = "Common interface objects to be used in all our interfaces",
   homepage = "https://github.com/OperRat-Technologies/common-interface",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ciParam = "src/ciParam.lua",
      ciScreen = "src/ciScreen.lua"
   }
}
