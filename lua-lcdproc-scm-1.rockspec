package = "lua-lcdproc"
version = "scm-1"
source = {
  url = "git://github.com/denpamusic/lua-lcdproc.git",
  branch="master"
}
description = {
  summary = "LCDproc client for Lua",
  detailed = [[
      lua-lcdproc is a humble LCDproc client written in Lua language.
  ]],
  homepage = "https://lua-lcdproc.denpa.pro/",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "luasocket"
}
build = {
  type = "builtin",
  modules = {
    ["lcdproc"]         = "src/lcdproc.lua",
    ["lcdproc.menu"]    = "src/lcdproc/menu.lua",
    ["lcdproc.screen"]  = "src/lcdproc/screen.lua",
    ["lcdproc.widgets"] = "src/lcdproc/widgets.lua"
  },
  copy_directories = {
    "docs",
    "examples"
  }
}
