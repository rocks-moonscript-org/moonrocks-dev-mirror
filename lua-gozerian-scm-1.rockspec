
 package = "lua-gozerian"
 version = "scm-1"
 source = {
    url = "git://github.com/30x/lua-gozerian"
 }
 description = {
    summary = "Call gozerian runtime from nginx/openresty",
    detailed = [[
      This module runs gozerian functions from ngx/openresty
    ]],
    homepage = "https://github.com/30x/lua-gozerian",
    license = "Apache-2.0"
 }
 dependencies = {
    "lua ~> 5.1"
 }
 build = {
    type = "builtin",
    modules = {
      ["lua-gozerian"] = "lib/resty/gozerian/index.lua"
    },
    install = {
      lua = {
        ["init-weaver"] = "lib/resty/gozerian/init-weaver.lua",
        ["c"] = "lib/resty/gozerian/c.lua",
        ["weaver-body-filter"] = "lib/resty/gozerian/weaver-body-filter.lua",
        ["weaver-common"] = "lib/resty/gozerian/weaver-common.lua",
        ["weaver-header-filter"] = "lib/resty/gozerian/weaver-header-filter.lua",
        ["weaver-request"] = "lib/resty/gozerian/weaver-request.lua"
      }
    }

 }