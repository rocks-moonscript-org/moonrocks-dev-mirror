package = "rugpull"
version = "dev-1"
source = {
   url = "git+https://github.com/SuriyaRuk/plugins.git"
}
description = {
   homepage = "https://github.com/SuriyaRuk/plugins.git",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.rugpull.handler"] = "rugpull/kong/plugins/rugpull/handler.lua",
      ["kong.plugins.rugpull.schema"] = "rugpull/kong/plugins/rugpull/schema.lua",
      ["kong.plugins.rugpull.access"] = "rugpull/kong/plugins/rugpull/access.lua"
   }
}
