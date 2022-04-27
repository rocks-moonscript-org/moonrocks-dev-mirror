package = "praint"
version = "scm-1"
source = {
   url = "git+https://git.m455.casa/praint"
}
description = {
   summary = "A library for printing colours to the terminal.",
   detailed = [[
Currently supports the following colors:
  - Black, Red, Green, Yellow, Blue, Magenta, Cyan, White, Terminal Default

Currently supports the following styles:
  - Bold, Terminal Default
   ]],
   homepage = "https://git.m455.casa/praint/about",
   license = "AGPL 3.0"
}
dependencies = {
   "lua >= 5.3, < 5.4"
}
supported_platforms = { "linux" }
build = {
   type = "builtin",
   modules = {
      praint = "praint.lua"
   },
}
