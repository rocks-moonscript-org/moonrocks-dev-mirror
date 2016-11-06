package = "smaug"
version = "dev-1"

source = {
  url = "https://github.com/nilq/smaug-mirror",
}

description = {
  summary = "Game engine for MoonScript, in MoonScript.",
  homepage = "https://smaug.io",
  maintainer = "Nilq",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "moonscript"
}

build = {
  type = "command",

  install = {
    bin = { "bin/smaug" }
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
