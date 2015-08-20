package = "pandoc-cli-builder"

version = "cvs-1"

source = {
   url = "git://github.com/Obside/pandoc-cli-builder"
}

description = {
   summary = "A simple lua wrapper for the pandoc cli.",
   homepage = "https://github.com/Obside/pandoc-cli-builder",
   license = "Unlicense"
}

dependencies = {
    "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["pandoc-cli-builder"] = "src/Pandoc.lua"
   }
}
