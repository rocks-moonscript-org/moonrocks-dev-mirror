package = "AbsTK"
version = "scm-1"
source = {
   url = "git+https://github.com/PedroAlvesV/AbsTK-Lua.git"
}
description = {
   summary = "The Abstract Toolkit – a widget toolkit for GUI and text-mode applications.",
   detailed = "The Abstract Toolkit – a widget toolkit for GUI and text-mode applications.",
   homepage = "https://github.com/PedroAlvesV/AbsTK-Lua",
   license = "MIT"
}
dependencies = { "lgi >= 0.9.1", "lcurses >= 9.0" }
build = {
   type = "builtin",
   modules = {
      abstk = "src/abstk.lua",
      ["abstk.AbsCurses"] = "src/abstk/AbsCurses.lua",
      ["abstk.AbsGtk"] = "src/abstk/AbsGtk.lua",
      ["abstk.util"] = "src/abstk/util.lua",
   }
}
