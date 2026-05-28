package = "liblgd"
version = "dev-1"
source = {
   url = "git+https://github.com/ajakilas/liblgd.git"
}
description = {
   summary = "A library for generating Geometry Dash levels.",
   detailed = [[
      liblgd allows you to script Geometry Dash levels using Lua 5.4.
      Supports triggers, objects, and groups for this moment.
   ]],
   homepage = "https://github.com/ajakilas/liblgd",
   license = "AGPL-3.0"
}
dependencies = {
   "lua >= 5.4",
   "lua-zlib"
}
build = {
   type = "builtin",
   modules = {
      ["liblgd"] = "init.lua",

      ["liblgd.core.builder"] = "core/builder.lua",
      ["liblgd.core.context"] = "core/context.lua",
      ["liblgd.core.encoder"] = "core/encoder.lua",

      ["liblgd.objects.obj"] = "objects/obj.lua",
      ["liblgd.objects.text"] = "objects/text.lua",
      ["liblgd.objects.chain"] = "objects/chain.lua",

      ["liblgd.triggers.trg"] = "triggers/trg.lua",
      ["liblgd.triggers.move"] = "triggers/move.lua",
      ["liblgd.triggers.alpha"] = "triggers/alpha.lua",
      ["liblgd.triggers.toggle"] = "triggers/toggle.lua",
      ["liblgd.triggers.spawn"] = "triggers/spawn.lua",
      ["liblgd.triggers.touch"] = "triggers/touch.lua",
   }
}
