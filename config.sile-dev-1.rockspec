rockspec_format = "3.0"
package = "config.sile"
version = "dev-1"
source = {
    url = "git+https://github.com/jodros/config.sile.git",
}
description = {
    homepage = "https://github.com/jodros/config.sile",
    license = "MIT",
    maintainer = "João Quinaglia"
}
dependencies = {"lua >= 5.1", "datafile", "lua-toml", "luafilesystem"}
build = {
    type = "builtin",
    modules = {
        ["sile.classes.plain"] = "classes/plain.lua",
        ["sile.core.gatherer"] = "core/gatherer.lua",
   },
    copy_directories = {"config"}
}

