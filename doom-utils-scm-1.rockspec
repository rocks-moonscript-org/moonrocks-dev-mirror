rockspec_format = "3.0"

package = "doom-utils"
version = "scm-1"

source = {
   url = "git+https://github.com/elf-alchemist/doom-utils",
   branch = "main"
}

description = {
   summary = "Doom utilities for *nix systems",
   detailed = "",
   homepage = "https://github.com/elf-alchemist/doom-utils",
   license = "Apache-2.0"
}

supported_platforms = {
   "linux",
   "macosx"
}

dependencies = {
   "lua >= 5.1, < 5.5"
}

build = {
   type = "builtin",
   modules = {
      wad = "src/wad.lua"
   },
}
