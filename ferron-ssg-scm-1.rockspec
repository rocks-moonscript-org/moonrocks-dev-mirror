package = "ferron-ssg"
version = "scm-1"
source = {
    url = "https://github.com/hs0ucy/ferron-ssg"
}
description = {
    summary= "Static website generator",
    detailed = [[ Ferron is a fast and simple static website generator made with Lua. ]],
    homepage = "https://github.com/hs0ucy/ferron-ssg",
    license = "MIT"
}
dependencies = {
    "lua >= 5.3",
    "lua-path",
    "dkjson",
    "luafilesystem",
    "lustache",
    "markdown",
    "mimetypes"
}
build = {
    type = "builtin",
    modules = {
        config = "config.lua",
        ferron = "ferron.lua",
        ["ferron.content"] = "ferron/content.lua",
        ["ferron.feed"] = "ferron/feed.lua",
        ["ferron.link"] = "ferron/link.lua",
        ["ferron.list"] = "ferron/list.lua",
        ["ferron.page"] = "ferron/page.lua",
        ["ferron.site"] = "ferron/site.lua",
        ["ferron.static"] = "ferron/static.lua",
        ["ferron.tag"] = "ferron/tag.lua",
        ["ferron.utilities.file-utils"] = "ferron/utilities/file-utils.lua",
        ["ferron.utilities.table-utils"] = "ferron/utilities/table-utils.lua",
        ["ferron.utilities.template-utils"] = "ferron/utilities/template-utils.lua",
        ["sites.ferron-ssg.tld.site-config"] = "sites/ferron-ssg.tld/site-config.lua"
    }
}
