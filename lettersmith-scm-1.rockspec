-- http://www.luarocks.org/en/Creating_a_rock
package = "Lettersmith"
version = "scm-1"
source = {
  url = "git://github.com/gordonbrander/lettersmith"
}
description = {
  summary = "A simple, flexible static site generator based on plugins",
  detailed = [[
  Lettersmith is a static site generator. It's goals are:

  - Simple: no fancy classes, or conventions. Just a small library for
    transforming files with functions.
  - Flexible: everything is a plugin.
  - Fast: build thousands of pages in seconds or less.
  - Embeddable: we're going to put this thing in an Mac app so normal people
    can use it.

  It ships with plugins for blogging, Markdown and Mustache, but can be easily
  configured to build any type of static site.
  ]],
  homepage = "https://github.com/gordonbrander/lettersmith",
  license = "MIT/X11"
}
dependencies = {
  "lua >= 5.1",
  "luafilesystem >= 1.6",
  "lustache >= 1.3",
  "yaml >= 1.1",
  "lua-discount >= 1.2",
  "date >= 2.1"
}
build = {
  type = "builtin",
  modules = {
    ["lettersmith"] = "init.lua",

    -- Plugins
    ["lettersmith.mustache"] = "mustache.lua",
    ["lettersmith.permalinks"] = "permalinks.lua",
    ["lettersmith.drafts"] = "drafts.lua",
    ["lettersmith.markdown"] = "markdown.lua",
    ["lettersmith.meta"] = "meta.lua",
    ["lettersmith.rss"] = "rss.lua",
    ["lettersmith.paging"] = "paging.lua",

    -- Libraries
    ["lettersmith.transducers"] = "transducers.lua",
    ["lettersmith.lazy"] = "lazy.lua",
    ["lettersmith.docs"] = "docs.lua",
    ["lettersmith.headmatter"] = "headmatter.lua",
    ["lettersmith.path"] = "path.lua",
    ["lettersmith.wildcards"] = "wildcards.lua",
    ["lettersmith.file_utils"] = "file_utils.lua",
    ["lettersmith.table_utils"] = "table_utils.lua",
    ["lettersmith.plugin_utils"] = "plugin_utils.lua"
  }
}