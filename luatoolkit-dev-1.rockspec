package = "luatoolkit"
version = "dev-1"
source = {
   url = "https://github.com/dheisom-gomes/luatoolkit/archive/main.zip"
}
description = {
   detailed = "Toolkit simples para adicionar funções extras na linguagem Lua, esta biblioteca funciona em Lua 5.2+ e é bem leve.",
   homepage = "https://github.com/dheisom-gomes/lua-toolkit",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      toolkit = "luatoolkit-main/toolkit.lua"
   }
}
dependencies = {
      "lua >= 5.1, <= 5.4"
}
