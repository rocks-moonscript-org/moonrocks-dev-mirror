rockspec_format = "3.0"
package = "mdstream"
version = "scm-1"

source = {
    url = "git+https://github.com/VitaminVague/mdstream.git",
}

description = {
    summary = "mdstream is a streaming CommonMark event parser for Lua.",
    detailed = "",
    license = "MIT",
    homepage = "https://github.com/VitaminVague/mdstream",
    issues_url = "https://github.com/VitaminVague/mdstream/issues",
    labels = { "commonmark", "markdown" },
}

dependencies = {
    "lua >= 5.1",
}

build = {}

test_dependencies = {}

test = {}
