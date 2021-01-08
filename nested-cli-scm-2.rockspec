rockspec_format = "3.0"
package = "nested-cli"
version = "scm-2"
source = {
    url = "git://github.com/gilzoide/nested",
}
description = {
    summary = "CLI for Nested data structure textual format",
    detailed = [[
CLI script for reading and rewritting Nested files.
May be used as a linter, formatter or converter for `require`able Lua scripts.
]],
    license = "Unlicense",
    labels = {
        "datastructure",
        "serialization"
    },
    maintainer = "gilzoide <gilzoide@gmail.com>"
}
dependencies = {
    "lua >= 5.1",
    "nested >= 1.0.1",
    "penlight",
    "stringstream",
}
build = {
    type = "builtin",
    install = {
        bin = {
            nested = "lua/main.lua"
        }
    }
}
