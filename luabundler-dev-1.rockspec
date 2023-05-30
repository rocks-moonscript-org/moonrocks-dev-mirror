package = "luabundler"
version = "dev-1"
source = {url = "git+https://github.com/thislight/luabundler.git"}
description = {
    homepage = "https://github.com/thislight/luabundler",
    license = "Apache-2.0"
}
dependencies = {
    "lua ~> 5.4", "argparse >=0.7,<0.8", "tprint >=0.3,<0.4",
    "stringy >=0.7,<0.8"
}
build = {
    type = "builtin",
    modules = {
        luabundler = "luabundler/init.lua",
        ["luabundler.template_prog"] = "luabundler/template_prog.lua",
        ["luabundler.searchers"] = "luabundler/searchers.lua",
        ["luabundler.cli"] = "luabundler/cli.lua",
        ["luabundler.cookbook"] = "luabundler/cookbook.lua",
        ["luabundler.bundler"] = "luabundler/bundler.lua",
        ["luabundler.utils"] = "luabundler/utils.lua",
        ["luabundler.pathlib"] = "luabundler/pathlib.lua"
    },
    install = {bin = {["luabundler"] = "luabundler/init.lua"}}
}
