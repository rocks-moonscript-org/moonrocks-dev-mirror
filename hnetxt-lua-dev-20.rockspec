rockspec_format = "3.0"
package = "hnetxt-lua"
version = "dev-20"
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
      htl = "src/htl/init.lua",
      ["htl.config"] = "src/htl/config.lua",
      ["htl.goals"] = "src/htl/goals.lua",
      ["htl.journal"] = "src/htl/journal.lua",
      ["htl.parse"] = "src/htl/parse/init.lua",
      ["htl.parse.fold"] = "src/htl/parse/fold.lua",
      ["htl.project"] = "src/htl/project/init.lua",
      ["htl.project.mirror"] = "src/htl/project/mirror/init.lua",
      ["htl.project.mirror.config"] = "src/htl/project/mirror/config.lua",
      ["htl.project.move.operation"] = "src/htl/project/move/operation/init.lua",
      ["htl.project.move.operation.dir"] = "src/htl/project/move/operation/dir.lua",
      ["htl.project.move.operation.file"] = "src/htl/project/move/operation/file.lua",
      ["htl.project.move.operation.mark"] = "src/htl/project/move/operation/mark.lua",
      ["htl.project.move.operator"] = "src/htl/project/move/operator.lua",
      ["htl.project.registry"] = "src/htl/project/registry.lua",
      ["htl.text.divider"] = "src/htl/text/divider.lua",
      ["htl.text.flag"] = "src/htl/text/flag.lua",
      ["htl.text.header"] = "src/htl/text/header.lua",
      ["htl.text.link"] = "src/htl/text/link.lua",
      ["htl.text.list"] = "src/htl/text/list.lua",
      ["htl.text.location"] = "src/htl/text/location.lua",
      ["htl.text.mark"] = "src/htl/text/mark.lua",
      ["htl.text.reference"] = "src/htl/text/reference.lua",
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
