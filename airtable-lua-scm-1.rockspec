package = "airtable-lua"
version = "scm-1"
source = {
   url = "git://github.com/Charmunks/airlua.git"
}
description = {
   summary = "Airtable API client for Lua",
   detailed = [[
      Airtable API client for Lua with support for all record operations,
      built-in protection against Airtable injections, and support for modifying/getting
      records using field values. Built for the Astra lua runtime.
   ]],
   homepage = "https://github.com/Charmunks/airlua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      airtable = "airtable.lua"
   }
}
