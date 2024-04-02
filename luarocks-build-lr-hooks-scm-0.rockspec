package = "luarocks-build-lr-hooks"
version = "scm-0"
source = {
   url = "https://codeberg.org/leso-kn/lr-hooks/archive/main.zip",
   dir = "lr-hooks"
}
description = {
   homepage = "https://codeberg.org/leso-kn/lr-hooks",
   license = "MIT"
}
build = {
   type = "command",
   install_command = "$(LUA) install.lua \"$(LUADIR)\" \"$(LIBDIR)\""
}
