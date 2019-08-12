package = "logger"
version = "scm-1"
source  = {
    url = "git://github.com/doronbehar/lua-logger.git",
}
description = {
    summary = "A simple API to use logging features",
    detailed    = [[
lua logger provides a simple API to use logging features in Lua. Its design was
based on log4j and it was forked from log4l by @mwchase.
]],
    homepage    = "https://gitlab.com/doronbehar/lua-logger",
    license = "MIT/X11",
}
dependencies = {
    "lua >= 5.1, < 5.4",
}
build   = {
    type    = "none",
    install = {
        lua = {
            ['logger'] = "logger.lua",
        }
    }
}
