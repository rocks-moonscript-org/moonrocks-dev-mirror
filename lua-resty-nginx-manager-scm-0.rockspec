package = "lua-resty-nginx-manager"
version = "scm-0"

source = {
   url = "git://github.com/oktvn/lua-resty-nginx-manager.git",
}

description = {
   summary = "A declarative Nginx configuration generator for OpenResty",
   detailed = [[
      Programmatically spawn, control, and inspect OpenResty/Nginx instances.
   ]],
   homepage = "https://github.com/oktvn/lua-resty-nginx-manager",
   license = "MIT",
   maintainer = "oktvn"
}

dependencies = {
  "lua >= 5.1",
  "lua-resty-nginx-confgen",
  "lua-resty-http",
  "lua-resty-openssl",
  "lua-cjson",
}

build = {
   type = "builtin",
   modules = {
      ["resty.nginx.manager"] = "lib/resty/nginx/manager.lua",
      ["resty.nginx.manager.utils.shdict"] = "lib/resty/nginx/manager/utils/shdict.lua",
   }
}