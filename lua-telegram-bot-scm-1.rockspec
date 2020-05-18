package = "Lua-Telegram-Bot"
version = "scm-1"
source = {
    url = "git+https://github.com/RamiLego4Game/Lua-Telegram-Bot.git"
}
description = {
    summary = "A Telegram Bots library for Lua.",
    detailed = [[
        A Library for writing Telegram Bots in Lua.
        It handles all the communication needed with the Telegram servers.
        And provides an object-oriented easy to use API.
    ]],
    homepage = "https://github.com/RamiLego4Game/Lua-Telegram-Bot",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.4",
    "http >= 0.3 < 0.4",
    "luasocket >= 3.0rc1, < 4.0",
    "middleclass >= 4.1.1, < 5.0.0",
    "lua-cjson >= 2.1.0, < 3.0.0",
    "multipart-post >= 1.3, < 2.0"
}
build = {
    type = "builtin",
    modules = {},
    --copy_directories = {"doc"}
}