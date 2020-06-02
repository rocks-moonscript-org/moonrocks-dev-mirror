package = "ngx-oauth-pleroma-mod"
version = "dev-1"
source = {
   url = "git+https://git.ihatebeinga.live/IHBAGang/ngx-oauth.git",
   branch = "master"
}
description = {
   summary = "OAuth 2.0 proxy for nginx",
   homepage = "https://github.com/jirutka/ngx-oauth",
   license = "MIT",
   maintainer = "Jakub Jirutka <jakub@jirutka.cz>"
}
dependencies = {
   "lua >= 5.1",
   "lua-cjson ~> 2",
   "lua-resty-http ~> 0.06",
   "luaossl"
}
build = {
   type = "builtin",
   modules = {
      ["ngx-oauth.Cookies"] = "lib/ngx-oauth/Cookies.lua",
      ["ngx-oauth.config"] = "lib/ngx-oauth/config.lua",
      ["ngx-oauth.crypto"] = "lib/ngx-oauth/crypto.lua",
      ["ngx-oauth.either"] = "lib/ngx-oauth/either.lua",
      ["ngx-oauth.http_client"] = "lib/ngx-oauth/http_client.lua",
      ["ngx-oauth.nginx"] = "lib/ngx-oauth/nginx.lua",
      ["ngx-oauth.oauth2"] = "lib/ngx-oauth/oauth2.lua",
      ["ngx-oauth.util"] = "lib/ngx-oauth/util.lua"
   },
   copy_directories = {
      "spec"
   },
   install = {
      lua = {
         "lib/ngx-oauth-login.lua",
         "lib/ngx-oauth-logout.lua",
         "lib/ngx-oauth-proxy.lua",
         "lib/ngx-oauth-redirect-handler.lua"
      }
   }
}
