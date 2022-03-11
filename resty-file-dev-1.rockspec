package = "resty-file"
supported_platforms = {"linux", "macosx","windows"}
version = "dev-1"
source = {
   url = "git+https://github.com/OnlyPiglet/resty-file.git",
   branch = "master",
}
description = {
   summary = "a pure lua file log lib",
   detailed = "resty-file is  a pure lua lib for logging into file",
   homepage = "https://github.com/OnlyPiglet/resty-file",
   license = "*** MIT License ***",
   maintainer = "jackwuchenghao@163.com",
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["file_log"]="file_log.lua"
   }
}
