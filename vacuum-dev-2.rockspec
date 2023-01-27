package = "vacuum"
version = "dev-2"
source = {
   url = "git+https://github.com/magicmannna/vacuum.git"
}
description = {
   summary = " A numerical computation library for building game development in Lua.",
   detailed = "A numerical computation library for building game development in Lua.",
   homepage = "https://github.com/magicmannna/vacuum",
   license = "*** see license in README file. ***"
}
build = {
   type = "builtin",
   modules = {
      ["vacuum"]="init.lua",
      ["vacuum.matrix"]="lib/matrix.lua",
      ["vacuum.vector"]="lib/vector.lua",
      ["vacuum.quaternion"]="lib/quat.lua"
   }
}
