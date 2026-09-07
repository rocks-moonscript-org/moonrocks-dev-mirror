package = "antybrowser"
version = "scm-1"
source = { url = "git://github.com/antybrowser/SDK", dir = "lua" }
description = {
   summary = "Official Antybrowser SDK for Lua",
   detailed = "Lua client for the Antybrowser Local API",
   homepage = "https://antybrowser.com",
   license = "MIT"
}
dependencies = { "lua >= 5.1", "lua-cjson" }
build = { type = "builtin", modules = { antybrowser = "antybrowser.lua" } }
