package = "Grupp"
version = "dev-3"
source = {
   url = "git+ssh://git@bitbucket.org/s4b3r6/grupp.git",
   tag = "dev-3"
}
description = {
   summary = "A text adventure.",
   detailed = "A text adventure.",
   homepage = "https://bitbucket.org/s4b3r6/grupp",
   license = "All Rights Reserved"
}
dependencies = {
  "lua 5.1",
}
build = {
   type = "builtin",
   modules = {
      player = "player.lua",
      gameOver = "end.lua",
      utils = "utils.lua",
      world = "world.lua"
   },
   install = {
     bin = {"grupp"}
   }
}
