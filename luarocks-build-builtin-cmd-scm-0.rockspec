package = "luarocks-build-builtin-cmd"
version = "scm-0"
source = {
   url = "https://codeberg.org/leso-kn/luarocks-build-builtin-cmd/archive/main.tar.gz",
   dir = "luarocks-build-builtin-cmd"
}
description = {
   homepage = "https://codeberg.org/leso-kn/luarocks-build-builtin-cmd",
   license = "MIT",
   summary = "A luarocks build backend combining the 'builtin' and 'command' backends."
}
build = {
   type = "builtin",
   modules = {
      ["luarocks.build.builtin-with-command"] = "luarocks/build/builtin-with-command.lua"
   }
}
