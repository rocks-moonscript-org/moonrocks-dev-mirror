rockspec_format = "3.0"
package = "igbew"
version = "scm-1"
source = {
  url = "git+https://git.sr.ht/~awl/igbew",
  branch = "trunk",
}
description = {
  homepage = "https://git.sr.ht/~awl/igbew",
  summary = "Simple static site generator for Lua and Fennel",
  detailed = [[
    Is your blog a folder of Markdown files?
    You can use this to turn those Markdown files into HTML files, plus feeds 'n' stuff.

    Bring your own CSS (and probably your own templates)!
  ]],
  labels = { "fennel", "blog", "markdown" },
  license = "BSD-3-Clause",
  maintainer = "Adam Lloyd <adam@alloy-d.net>",
}
supported_platforms = {"unix"}
dependencies = {
  "lua >= 5.4",
  "etlua == 1.3.0",
  "fennel >= 1.6.1",
  "lunamark == 0.6.0",
  "luafilesystem == 1.9.0",
}
build_dependencies = {
  "luarocks-build-fennel",
}
build = {
  type = "fennel",
  modules = {
    ["igbew"] = "igbew/init.fnl",
    ["igbew.configuration"] = "igbew/configuration.fnl",
    ["igbew.files"] = "igbew/files.fnl",
    ["igbew.posts"] = "igbew/posts.fnl",
    ["igbew.structure"] = "igbew/structure.fnl",
    ["igbew.templates"] = "igbew/templates/init.fnl",
    ["igbew.templates.builtin.feed"] = "igbew/templates/builtin/feed.lua",
    ["igbew.templates.builtin.index"] = "igbew/templates/builtin/index.lua",
    ["igbew.templates.builtin.post"] = "igbew/templates/builtin/post.lua",
    ["igbew.stupid.filesystem"] = "igbew/stupid/filesystem.fnl",
    ["igbew.stupid.paths"] = "igbew/stupid/paths.fnl",
  }
}
test = {
  type = "command",
  command = "fennel vendor/faith/faith.fnl",
  flags = {
    "--tests",
    -- Note that test files need to be added here manually!
    "test.structure",
    "test.stupid.paths",
  }
}
