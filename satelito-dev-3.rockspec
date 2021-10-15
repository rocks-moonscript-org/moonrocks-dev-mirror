package = "satelito"
version = "dev-3"
source = {
    url = "git://soucy.cc/satelito.git",
    tag = "Dev.3.0"
}
description = {
    homepage = "https://soucy.cc/git/satelito/files.html",
    license = "MIT",
    summary = "Satelito is a static [web] site (or page) generator (ssg) made with Lua script."
}
dependencies = {
    "lua >= 5.3",
    ---
    "argparse >= 0.7.1-1",
    "etlua >= 0.6.0",
    "mimetypes >= 1.0.0-2",
    "lua-discount >= 1.2.10.1-1",
    "luafilesystem >= 1.8.0-1",
}
build = {
    type = "builtin",
    modules = {
        satelito = "satelito/init.lua",
        --
        ["satelito.assets"] = "satelito/assets.lua",
        ["satelito.dirtree"] = "satelito/dirtree.lua",
        ["satelito.feed"] = "satelito/feed.lua",
        ["satelito.file"] = "satelito/file.lua",
        ["satelito.list"] = "satelito/list.lua",
        ["satelito.model"] = "satelito/model.lua",
        ["satelito.page"] = "satelito/page.lua",
        ["satelito.site"] = "satelito/site.lua",
        ["satelito.sitemapxml"] = "satelito/sitemapxml.lua",
        ["satelito.template"] = "satelito/template.lua",
        ["satelito.lib.lume.lume"] = "satelito/lib/lume/lume.lua",
        ["satelito.lib.lume.test.test"] = "satelito/lib/lume/test/test.lua",
        ["satelito.lib.lume.test.util.tester"] = "satelito/lib/lume/test/util/tester.lua",
        ["satelito.lib.slugify"] = "satelito/lib/slugify.lua",
    },
    install = {
        bin = {
            "bin/satelito"
        }
    }
}
