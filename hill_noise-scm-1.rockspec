package = "hill_noise"
version = "scm-1"
source = {
   url = "git+https://spilt@bitbucket.org/spilt/hill_noise.git"
}
description = {
   homepage = "https://spilt@bitbucket.org/spilt/hill_noise.git",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      hill_noise = "hill_noise.lua"
   }
}
