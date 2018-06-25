package = "lualib_id3"
version = "scm-1"
source = {
    url = "git://github.com/ymber/lualib_id3"
}
description = {
    summary = "A pure lua ID3v2 library.",
    detailed = [[
        This library contains functions to extract and
        process frame and header data for a subset of the
        frames defined in the ID3v2 specifications.
    ]],
    homepage = "https://github.com/ymber/lualib_id3",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
build = {
    type = "builtin",
    modules = {
        id3 = "src/id3.lua"
    }
}
