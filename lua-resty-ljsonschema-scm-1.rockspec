package = "lua-resty-ljsonschema"
version = "scm-1"
source = {
   url = "git://github.com/Tieske/lua-resty-ljsonschema.git",
   branch = "master",
}
description = {
   summary = "JSON Schema data validator",
   detailed = [[
This module is  data validator the implements JSON Schema draft 4.
Given an JSON schema, it will generate a validator function that can be used
to validate any kind of data (not limited to JSON).
]],
   homepage = "https://github.com/Tieske/lua-resty-ljsonschema",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
   "net-url",
}
build = {
   type = "builtin",
   modules = {
      ["resty.ljsonschema.init"] = "src/resty/ljsonschema/init.lua",
      ["resty.ljsonschema.store"] = "src/resty/ljsonschema/store.lua",
      ["resty.ljsonschema.metaschema"] = "src/resty/ljsonschema/metaschema.lua",
   }
}
