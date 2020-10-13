package = "lua-wzj-package"
version = "dev-1"
source = {
        url = ""
}

description = {
        homepage = "",
        license = ""
}

build = {
        type = "builtin",
        modules = {
                ["lua-wzj-package"] = "./code/wzj-access.lua",
                ["test"] = "./code/test.lua"
        }
}

dependencies = {
        "lua >= 5.0, <5.2"
}