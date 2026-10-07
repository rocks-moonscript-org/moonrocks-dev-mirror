package = "luavg"
version = "dev-1"
source = {
   url = "git+https://github.com/carlosmpv/luavg.git"
}
description = {
   detailed = [[
Camada de abstração em cima do SVG, as chamadas de função da biblioteca vão ter como resultado 
a escrita de códigos SVG.]],
   homepage = "https://github.com/carlosmpv/luavg",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      luavg = "luavg.lua",
      ["samples.dice.dices"] = "samples/dice/dices.lua",
      ["samples.showcase.showcase"] = "samples/showcase/showcase.lua",
      ["tools.generate_types"] = "tools/generate_types.lua",
      ["types.d"] = "types.d.lua"
   },
   copy_directories = {
      "samples"
   }
}
