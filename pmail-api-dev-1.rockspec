package = "pmail-api"
version = "dev-1"
source = {
   url = "git+https://github.com/redstone-network/pmail-api.git"
}
description = {
   summary = "a http api to smtp",
   detailed = [["a http api to smtp"]],
   homepage = "https://github.com/redstone-network/pmail-api",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.1", 
   "pop3 >= 0.1.6-1",
}
build = {
   type = "builtin",
   modules = {
      ["app.app.init"] = "app/app/init.lua",
      ["app.mail.api"] = "app/mail/api.lua",
      ["app.mail.init"] = "app/mail/init.lua"
   }
}
