package = "kong-churnzero"  

version = "0.1.1-1"               

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/r-alekseev/kong-churnzero.git",
  tag = "0.1.1"
}

description = {
  summary = "Integrate Kong with ChurnZero using HTTP API",
  homepage = "https://github.com/r-alekseev/kong-churnzero",
  license = "Apache 2.0"
}

dependencies = {
}

local pluginName = "churnzero"  
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".access"] = "kong/plugins/"..pluginName.."/access.lua",
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".header_filter"] = "kong/plugins/"..pluginName.."/header_filter.lua",
    ["kong.plugins."..pluginName..".log"] = "kong/plugins/"..pluginName.."/log.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
  }
}
