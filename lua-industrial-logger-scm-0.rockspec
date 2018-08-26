package = "lua-industrial-logger"
version = "scm-0"
source = {
    url = "git://github.com/djfdyuruiry/lua-industrual-strength-logging.git",
    tag = "master"
}
description = {
        summary = "A logging framework adding simple, powerful and reliable logs to any Lua application",
        detailed = [[
            See: https://github.com/djfdyuruiry/lua-industrual-strength-logging/blob/master/README.md

            Created by djfdyuruiry: https://github.com/djfdyuruiry
        ]],
        license = "MIT",
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["lua-industrial-logger.AnsiDecoratedStringBuilder"] = "lua-industrial-logger/AnsiDecoratedStringBuilder.lua",
        ["lua-industrial-logger.ConsoleAppender"] = "lua-industrial-logger/ConsoleAppender.lua",
        ["lua-industrial-logger.FileAppender"] = "lua-industrial-logger/FileAppender.lua",
        ["lua-industrial-logger.FileConfigurationLoader"] = "lua-industrial-logger/FileConfigurationLoader.lua",
        ["lua-industrial-logger.IdUtils"] = "lua-industrial-logger/IdUtils.lua",
        ["lua-industrial-logger.Levels"] = "lua-industrial-logger/Levels.lua",
        ["lua-industrial-logger.Logger"] = "lua-industrial-logger/Logger.lua",
        ["lua-industrial-logger.LoggerConfiguration"] = "lua-industrial-logger/LoggerConfiguration.lua",
        ["lua-industrial-logger.LoggerConfigurationDsl"] = "lua-industrial-logger/LoggerConfigurationDsl.lua",
        ["lua-industrial-logger.LoggerFactory"] = "lua-industrial-logger/LoggerFactory.lua",
        ["lua-industrial-logger.PatternBuilder"] = "lua-industrial-logger/PatternBuilder.lua",
        ["lua-industrial-logger.PatternGeneratorMap"] = "lua-industrial-logger/PatternGeneratorMap.lua",
        ["lua-industrial-logger.StringUtils"] = "lua-industrial-logger/StringUtils.lua",
        ["lua-industrial-logger.ThreadUtils"] = "lua-industrial-logger/ThreadUtils.lua",
        ["lua-industrial-logger.polyfills.loadstring"] = "lua-industrial-logger/polyfills/loadstring.lua",
        ["lua-industrial-logger.polyfills.setfenv"] = "lua-industrial-logger/polyfills/setfenv.lua"
    },
    copy_directories = {}
}
