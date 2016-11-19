package = "smaug"
version = "dev-1"

source = {
  url = "git://github.com/teasquat/smaug.git",
}

description = {
  summary    = "A MoonScript game engine through LibGDX.",
  homepage   = "www.github.com/teasquat/smaug.git",
  maintainer = "Lord Niels N. Horn <i.am@nilq.dk>",
  license    = "MIT",
}

dependencies = {
  "lua >= 5.1",
  "moonscript",
}

build = {
  type = "command",

  install = {
    bin = {
      "bin/smaug",
    },
  },

  platforms = {
    unix = {
      build_command = "sh build",
    },

    windows = {
      build_command = "build",
    },
  },

  copy_directories = {
    "egg",
    "res",
    "src",
  },
}
