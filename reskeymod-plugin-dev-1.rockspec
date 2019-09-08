package = "reskeymod-plugin"
version = "dev-1"
source = {
   url = "git+https://github.com/gpetrousov/kong-plugin-reskeymod.git"
}
description = {
   summary = "This Kong plugin enables you to change the names of keys in JSON response body.",
   detailed = "This Kong plugin enables you to change the names of keys in JSON response body.",
   homepage = "https://github.com/gpetrousov/kong-plugin-reskeymod",
   license = "*** please specify a license ***"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.reskeymod.body_modifier"] = "kong/plugins/reskeymod/body_modifier.lua",
      ["kong.plugins.reskeymod.handler"] = "kong/plugins/reskeymod/handler.lua",
      ["kong.plugins.reskeymod.schema"] = "kong/plugins/reskeymod/schema.lua"
   }
}
