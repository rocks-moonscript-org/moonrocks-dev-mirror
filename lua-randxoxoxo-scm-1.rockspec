package = "lua-randxoxoxo"
version = "scm-1"

source = {
    url = "git://github.com/user-none/lua-randxoxoxo.git"
}

description = {
    summary    = "Lua pseudo random number generator",
    homepage   = "https://github.com/user-none/lua-randxoxoxo.git",
    license    = "MIT/X11",
    maintainer = "John Schember <john@nachtimwald.com>"
}

dependencies = {
    "lua >= 5.3",
    "lua-nums"
}

build = {
    type    = "builtin",
    modules = {
        ["randxoxoxo"]      = "randxoxoxo/init.lua",
        ["randxoxoxo.rand"] = "randxoxoxo/rand.lua",
    }
}
