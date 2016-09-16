package = "nnname"
version = "scm-1"

source = {
    url = "git://github.com/felixgwu/nnname",
    tag = "master"
}

description = {
    summary = "Naming features for Torch nn",
    detailed = [[
        Naming features for Torch nn
    ]],
    homepage = "https://github.com/felixgwu/nnname",
    license = "MIT"
}

dependencies = {
    "torch >= 7.0",
    "nn >= 1.0",
}

build = {
    type = "builtin",
    modules = {
        nnname = "nnname.lua"
    }
}
