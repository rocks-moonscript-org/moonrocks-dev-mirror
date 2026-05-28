package = "lua-resty-nginx-confgen"
version = "scm-0"

source = {
   url = "git://github.com/oktvn/lua-resty-nginx-confgen.git",
}

description = {
   summary = "A declarative Nginx configuration generator for OpenResty",
   detailed = [[
      A library to programmatically generate Nginx configuration files 
      using Lua tables. It provides strongly-typed definitions, input 
      validation, schema constraints, and output formatters tailored 
      for core Nginx, OpenResty, and Rewrite directives.
   ]],
   homepage = "https://github.com/oktvn/lua-resty-nginx-confgen",
   license = "MIT",
   maintainer = "oktvn"
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["resty.nginx.confgen"] = "lib/resty/nginx/confgen.lua",
      ["resty.nginx.confgen.definitions.common"] = "lib/resty/nginx/confgen/definitions/common.lua",
      ["resty.nginx.confgen.definitions.lua_nginx"] = "lib/resty/nginx/confgen/definitions/lua_nginx.lua",
   }
}