package = "stackly"
version = "dev-2"
source = {
   url = "git+ssh://git@bitbucket.org/s4b3r6/stackly.git",
   tag = "dev-2",
}
description = {
   summary = "A stack-based language.",
   detailed = "A stack-based language.",
   homepage = "https://bitbucket.org/s4b3r6/stackly",
   license = "BSD 3-Clause"
}
build = {
   type = "builtin",
   modules = {
      argparse = "src/argparse.lua",
      env_guesser = "src/env_guesser.lua",
      eval = "src/eval.lua",
      stdlib = "src/stdlib.lua",
      tokeniser = "src/tokeniser.lua",
      type_system = "src/type_system.lua"
   },
   install = {
     bin = { "stackly" }
   }
}
