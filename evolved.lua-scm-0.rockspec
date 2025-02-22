rockspec_format = "3.0"
package = "evolved.lua"
version = "scm-0"
source = {
   url = "git://github.com/BlackMATov/evolved.lua",
}
description = {
   homepage = "https://github.com/BlackMATov/evolved.lua",
   summary = "Evolved ECS (Entity-Component-System) for Lua",
   license = "MIT",
   labels = {
      "ecs",
      "entity",
      "entities",
      "component",
      "components",
      "entity-component",
      "entity-component-system",
   },
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      evolved = "evolved.lua",
   }
}
