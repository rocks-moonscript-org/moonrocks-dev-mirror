rockspec_format = "3.0"

package = "mods"
version = "scm-1"
source = {
  url = "git+https://github.com/luamod/mods.git",
}

description = {
  summary = "Pure Lua modules",
  homepage = "https://luamod.github.io/mods",
  license = "MIT",
  detailed = [[
Mods provides small, focused Lua modules:
fs, calendar, glob, is, keyword, List, log, ntpath, operator, path, posixpath,
repr, runtime, Set, str, stringcase, tbl, template, and validate.
]],
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["mods"] = "src/mods/init.lua",
    ["mods._compat"] = "src/mods/_compat.lua",
    ["mods._date_duration"] = "src/mods/_date_duration.lua",
    ["mods.calendar"] = "src/mods/calendar.lua",
    ["mods.date"] = "src/mods/date.lua",
    ["mods.duration"] = "src/mods/duration.lua",
    ["mods.fs"] = "src/mods/fs.lua",
    ["mods.glob"] = "src/mods/glob.lua",
    ["mods.is"] = "src/mods/is.lua",
    ["mods.json"] = "src/mods/json.lua",
    ["mods.keyword"] = "src/mods/keyword.lua",
    ["mods.list"] = "src/mods/list.lua",
    ["mods.log"] = "src/mods/log.lua",
    ["mods.ntpath"] = "src/mods/ntpath.lua",
    ["mods.operator"] = "src/mods/operator.lua",
    ["mods.path"] = "src/mods/path.lua",
    ["mods.posixpath"] = "src/mods/posixpath.lua",
    ["mods.runtime"] = "src/mods/runtime.lua",
    ["mods.set"] = "src/mods/set.lua",
    ["mods.str"] = "src/mods/str.lua",
    ["mods.stringcase"] = "src/mods/stringcase.lua",
    ["mods.stringify"] = "src/mods/stringify.lua",
    ["mods.tbl"] = "src/mods/tbl.lua",
    ["mods.template"] = "src/mods/template.lua",
    ["mods.utils"] = "src/mods/utils.lua",
    ["mods.validate"] = "src/mods/validate.lua",
  },
}
