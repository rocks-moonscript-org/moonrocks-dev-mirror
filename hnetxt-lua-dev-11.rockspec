rockspec_format = "3.0"
package = "hnetxt-lua"
version = "dev-11"
source = {
   url = "git://github.com/hneutr/hnetxt-lua"
}
description = {
   homepage = "https://github.com/hneutr/hnetxt-lua",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "lyaml >= 6.2",
   "inspect >= 3.1",
   "lua-cjson >= 2.1",
   "hneutil-lua"
}
build = {
   type = "builtin",
   modules = {
      ["hnetxt-lua"] = "src/hnetxt-lua/init.lua",
      ["hnetxt-lua.config"] = "src/hnetxt-lua/config.lua",
      ["hnetxt-lua.element"] = "src/hnetxt-lua/element/init.lua",
      ["hnetxt-lua.element.flag"] = "src/hnetxt-lua/element/flag.lua",
      ["hnetxt-lua.element.link"] = "src/hnetxt-lua/element/link.lua",
      ["hnetxt-lua.element.location"] = "src/hnetxt-lua/element/location.lua",
      ["hnetxt-lua.element.mark"] = "src/hnetxt-lua/element/mark.lua",
      ["hnetxt-lua.element.reference"] = "src/hnetxt-lua/element/reference.lua",
      ["hnetxt-lua.goals"] = "src/hnetxt-lua/goals.lua",
      ["hnetxt-lua.project"] = "src/hnetxt-lua/project/init.lua",
      ["hnetxt-lua.project.mirror"] = "src/hnetxt-lua/project/mirror/init.lua",
      ["hnetxt-lua.project.mirror.config"] = "src/hnetxt-lua/project/mirror/config.lua",
      ["hnetxt-lua.project.registry"] = "src/hnetxt-lua/project/registry.lua",
      setup = "src/setup.lua"
   }
}
test = {
   type = "busted",
   platforms = {
      unix = {
         flags = {
            "--exclude-tags=ssh,git"
         }
      },
      windows = {
         flags = {
            "--exclude-tags=ssh,git,unix"
         }
      }
   }
}
