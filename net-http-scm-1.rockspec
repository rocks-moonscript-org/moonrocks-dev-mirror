package = "net-http"
version = "scm-1"
source = {
    url = "git+https://github.com/mah0x211/lua-net-http.git",
}
description = {
    summary = "http module for lua",
    homepage = "https://github.com/mah0x211/lua-net-http",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "base64mix >= 1.0.0",
    "bufio >= 0.4.0",
    "errno >= 0.3.0",
    "isa >= 0.1.0",
    "net >= 0.33.0",
    "metamodule >= 0.2",
    "lauxhlib >= 0.3.1",
    "string-capitalize >= 0.1.0",
    "string-split >= 0.3.0",
    "string-trim >= 0.2.0",
    "table-flatten >= 0.2.0",
    "tointeger >= 0.1.0",
    "url >= 2.0.0",
}
build = {
    type = "builtin",
    modules = {
        ['net.http.connection'] = "lib/connection.lua",
        ['net.http.content'] = "lib/content.lua",
        ['net.http.content.chunked'] = "lib/content/chunked.lua",
        ['net.http.date'] = "lib/date.lua",
        ['net.http.fetch'] = "lib/fetch.lua",
        ["net.http.header"] = "lib/header.lua",
        ["net.http.message"] = "lib/message.lua",
        ["net.http.message.request"] = "lib/message/request.lua",
        ["net.http.message.response"] = "lib/message/response.lua",
        ["net.http.query"] = "lib/query.lua",
        ['net.http.reader'] = "lib/reader.lua",
        ['net.http.server'] = "lib/server.lua",
        ['net.http.status'] = "lib/status.lua",
        ['net.http.writer'] = "lib/writer.lua",
        ['net.http.parse'] = {
            sources = {
                "src/parse.c",
            },
        },
    },
}
