package = "tabletypes"
version = "scm-1"
description = {
  summary = "Metatables implementing meta table types.",
  detailed = [[
    This is a tiny module for describing metatypes of tables.
  ]],
  homepage = "http://tabletypes.oka.io",
  maintainer = "yo@oka.io",
  license = "MIT"
}
source = {
  url = "git://github.com/Okahyphen/tabletypes"
}
build = {
  type = "builtin",
  modules = {
    ["tabletypes"] = "src/tabletypes.lua",
    ["tabletypes.getmetatype"] = "src/getmetatype.lua",
    ["tabletypes.errors"] = "src/errors.lua",
    ["tabletypes.iterator"] = "src/iterator.lua",
    ["tabletypes.collection"] = "src/collection.lua",
    ["tabletypes.list"] = "src/list.lua",
    ["tabletypes.tuple"] = "src/tuple.lua",
    ["tabletypes.hash"] = "src/hash.lua",
  }
}
dependencies = {
  "lua >= 5.2"
}
