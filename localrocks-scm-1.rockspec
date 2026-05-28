rockspec_format = "3.0"
package = "localrocks"
version = "scm-1"

source = {
    url = "git+https://github.com/VitaminVague/localrocks.git",
}

description = {
    summary = "Prepend project-local LuaRocks tree to module search paths",
    detailed = [[
localrocks is a small helper that configures Lua to resolve modules from a
project-local LuaRocks tree ("./lua_modules").

This lets you run scripts like:

$ lua -l localrocks script.lua

and have "require" resolve modules installed per-project via:

$ luarocks --tree lua_modules install <rock>]],
    license = "MIT",
    homepage = "https://github.com/VitaminVague/localrocks",
    issues_url = "https://github.com/VitaminVague/localrocks/issues",
    labels = { "rocks" },
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        localrocks = "src/localrocks.lua",
    },
}

test_dependencies = {
    "busted",
    "luacov",
    "luacov-reporter-lcov",
}

test = {
    type = "busted",
}
