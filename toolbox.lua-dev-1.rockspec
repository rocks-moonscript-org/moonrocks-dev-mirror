package = "toolbox.lua"
version = "dev-1"
source = {
   url = "https://github.com/tionis/toolbox.lua"
}
description = {
   homepage = "https://github.com/tionis/toolbox.lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, <= 5.4",
   "luasocket",
   "ansicolors"
}
build = {
   type = "builtin",
   modules = {
      toolbox = "src/toolbox.lua",
      jsonc = "src/jsonc.lua",
      json_edit = "src/json-edit.lua",
      json = "src/json.lua",
      json_beautify = "src/json-beautify.lua",
   }
}
