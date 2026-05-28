rockspec_format = "3.0"
package = "lua-rpg"
version = "dev-3"
source = {
   url = "git://github.com/astro-derek/lua-rpg",
   tag = "0.0.3"
}
description = {
   summary = "An RPG Engine built in lua.",
   homepage = "https://github.com/astro-derek/lua-rpg",
   license = "MIT",
   maintainer = "Derek Potter <dpmn83@gmail.com>"
}
dependencies = {
   "lua >= 5.4"
}
build = {
   type = "builtin",
   modules = {
      ["lua-rpg"] = "src/init.lua"
   }
}
