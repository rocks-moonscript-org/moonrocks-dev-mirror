package = "NC"
version = "dev-1"
source = {
   url = "git+https://github.com/NYANLAUNCHER/gcode"
}
dependencies = {
  "lua >= 5.4"
}
description = {
   homepage = "https://github.com/NYANLAUNCHER/gcode",
   license = "WTFPL"
}
build = {
   type = "builtin",
   modules = {
      ["NC.init"] = "NC/init.lua",
      ["NC.mill.haas_chc"] = "NC/mill/haas_chc.lua",
      ["NC.mill.haas_ngc"] = "NC/mill/haas_ngc.lua",
      ["NC.mill.linuxcnc"] = "NC/mill/linuxcnc.lua",
   }
}
