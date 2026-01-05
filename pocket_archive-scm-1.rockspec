package = "pocket_archive"
version = "scm-1"
rockspec_format = "3.0"

source = {
    url = "git+https://git.knowledgetx.com/scossu/pocket_archive.git",
    branch = "master",
    tag = "HEAD",
}

description = {
    summary = "Archival management & portal generator for cultural heritage.",
    detailed = [[
    Stick it in your pocket and carry it around. Install it on a cloud server.
    Install it on a Raspberry Pi. Browse it offline. Browse it online.
    Duplicate it, share it, harvest it and aggregate it. Feed it non-GMO
    spreadsheets regularly and it will thrive.
    ]],
    homepage = "http://git.knowledgetx.com/scossu/pocket_archive",
    license =
        "https://git.knowledgetx.com/scossu/pocket_archive/src/master/LICENSE"
}

supported_platforms = { "linux", }

dependencies = {
   "lua >= 5.4",

   "cli",
   "datafile",
   "etlua",
   "scossu/ftcsv",  -- TODO Use root package when changes are published to new release.
   "libmagic",
   "lua-cjson",
   "lua-vips",
   "luaposix",
   "penlight",
   "sllog",
   "luasocket",
   "pegasus",
   "volksdata",
   "watchdog",
}

test_dependencies = {
    "busted",
    "htmlparser",
}

build = {
    type = "builtin",
    modules = {
        -- markdown is not set up for Lua 5.4 and cannot be installed via
        -- Luarocks. Embedding the source here.
        ["markdown"] = "ext/markdown/markdown.lua",
        ["monocypher"] = {
            "ext/monocypher/monocypher.c",
            "ext/monocypher/lua_monocypher.c",
        },
        ["pocket_archive"] = "src/core.lua",
        ["pocket_archive.api"] = "src/api.lua",
        ["pocket_archive.cmdoc"] = "src/cmdoc.lua",
        ["pocket_archive.flags"] = "src/flags.lua",
        ["pocket_archive.fs"] = "src/fs.lua",
        ["pocket_archive.model"] = "src/model.lua",
        ["pocket_archive.repo"] = "src/repo.lua",
        ["pocket_archive.presentation"] = "src/presentation.lua",
        ["pocket_archive.submission"] = "src/submission.lua",
        ["pocket_archive.transformers"] = "src/transformers.lua",
        ["pocket_archive.validator"] = "src/validator.lua",
    },
    install = {bin = {
        pkar = "src/util/pkar.lua",
        pkar_http = "src/util/http.lua",
        pkar_watch = "src/util/watcher.lua",
    }},
    copy_directories = {
        "core_schema",
        "doc",
        "examples",
        "templates",
        "test",
    },
}
