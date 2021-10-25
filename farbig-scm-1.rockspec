package = "farbig"
version = "scm-1"
source = {
   url = "https://github.com/Nooo37/farbig",
   tag = "scm-1`"
}
description = {
   summary = "Colorscheme collection",
   detailed = [[
    ]],
   homepage = "https://github.com/Nooo37/farbig",
   license = ""
}
dependencies = {
   "lua >= 5.1",
}
supported_platforms = { "linux" }
build = {
   type = "builtin",
   modules = { farbig = "init.lua" }
}
