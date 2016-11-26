package = "ltcn"
version = "scm-1"

description = {
    summary = "Lua Table Constructor Notation",
    homepage = "https://github.com/craigbarnes/ltcn",
    license = "ISC"
}

source = {
    url = "git+https://github.com/craigbarnes/ltcn.git",
    branch = "master"
}

dependencies = {
    "lua >= 5.1",
    "lpeg >= 0.12" -- Possibly >= 0.10, but only tested with 0.12
}

build = {
    type = "builtin",
    modules = {
        ltcn = "ltcn.lua"
    }
}
