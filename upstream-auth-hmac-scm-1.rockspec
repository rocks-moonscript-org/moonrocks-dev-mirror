package = "upstream-auth-hmac"
version = "scm-1"
source = {
   url = "git://github.com/gae1202/kong-plugin-upstream-auth-hmac"
}
description = {
   homepage = "https://github.com/gae1202/kong-plugin-upstream-auth-hmac",
   license = "*** please specify a license ***"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.upstream-auth-hmac.handler"] = "kong/plugins/upstream-auth-hmac/handler.lua",
      ["kong.plugins.upstream-auth-hmac.schema"] = "kong/plugins/upstream-auth-hmac/schema.lua"
   }
}
