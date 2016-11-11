package = "sauce3"
version = "dev-1"

source = {
  url = "git://github.com/nilq/sauce3.git",
}

description = {
  summary = "Making game development great again!",
  homepage = "http://nilq.dk",
  maintainer = "Nilq <i.am@nilq.dk>",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "moonscript"
}

build = {
  type = "command",

  install = {
    bin = { "bin/sauce3" }
  },

  platforms = {
    unix = {
      build_command = "sh build"
    },
    windows = {
      build_command = "build"
    }
  },

  copy_directories = { "core", "res", "src" }
}
