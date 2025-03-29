package = "doma"
version = "dev-1"
source = {
   url = "git+https://github.com/APConduct/doma.git"
}
description = {
   homepage = "https://github.com/APConduct/doma",
   license = "Apache License 2.0"
}
build = {
   type = "builtin",
   modules = {
      ["doma"] = "src/doma.lua",
      ["doma.event"] = "src/event.lua",
      ["doma.init"] = "src/init.lua",
      ["doma.layout"] = "src/layout.lua",
      ["doma.backend"] = "src/backend.lua",

   }
}
