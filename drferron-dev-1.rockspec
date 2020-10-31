package = "drFerron"
version = "dev-1"
source = {
    url = "https://soucy.cc/git/drferron/files.html"
}
description = {
    homepage = "https://soucy.cc/git/drferron/files.html",
    license = "MIT"
}
dependencies = {
    "lua >= 5.3",
    "etlua >= 0.6.0",
    "inspect >= 3.1.1-0",
    "mimetypes >= 1.0.0-2",
    "lua-discount >= 1.2.10.1-1",
    "luafilesystem >= 1.8.0-1"
}
build = {
    type = "builtin",
    modules = {
        drFerron = "drferron/init.lua",
        ["bin.drFerron"] = "bin/drFerron.lua",
        ["drferron.asset"] = "drferron/asset.lua",
        ["drferron.dirtree"] = "drferron/dirtree.lua",
        ["drferron.feed"] = "drferron/feed.lua",
        ["drferron.file"] = "drferron/file.lua",
        ["drferron.init"] = "drferron/init.lua",
        ["drferron.lib.lume.lume"] = "drferron/lib/lume/lume.lua",
        ["drferron.lib.lume.test.test"] = "drferron/lib/lume/test/test.lua",
        ["drferron.lib.lume.test.util.tester"] = "drferron/lib/lume/test/util/tester.lua",
        ["drferron.list"] = "drferron/list.lua",
        ["drferron.model"] = "drferron/model.lua",
        ["drferron.page"] = "drferron/page.lua",
        ["drferron.site"] = "drferron/site.lua",
        ["drferron.template"] = "drferron/template.lua"
    },
    install = {
        bin = {
            "bin/drFerron.lua"
        }
    }
}
