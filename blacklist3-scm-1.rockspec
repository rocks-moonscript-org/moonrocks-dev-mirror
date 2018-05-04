package = "blacklist3"
version = "scm-1"
source = {
   url = "git+ssh://git@github.com/EdisonJunior/ring-resty-blacklist.git"
}
description = {
   homepage = "https://github.com/EdisonJunior/ring-resty-blacklist",
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
     blacklist = "src/blacklist.lua",
   }
}