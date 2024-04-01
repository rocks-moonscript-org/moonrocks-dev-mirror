package = "luarocks-build-builtin-with-command"
version = "scm-0"
source = {
   url = "https://codeberg.org/leso-kn/luarocks-build-builtin-with-command/archive/main.zip",
   dir = "luarocks-build-builtin-with-command"
}
description = {
   homepage = "https://codeberg.org/leso-kn/luarocks-build-builtin-with-command",
   license = "MIT",
   summary = "A luarocks build backend combining the 'builtin' and 'command' backends."
}
build = {
   type = "builtin",
   modules = {
      ["luarocks.build.builtin-with-command"] = "luarocks/build/builtin-with-command.lua"
   }
}
