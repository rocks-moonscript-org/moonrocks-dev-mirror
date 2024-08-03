package = "ndb.lua"
version = "scm-0"
source = {
   url = "git+https://codeberg.org/readmemyrights/ndb.lua"
}
description = {
   summary = "A lua module to parse simple key-value files,similar to [ndb(6)][].",
   detailed = [[
A lua module to parse simple key-value files,
similar to [ndb(6)][].]],
   homepage = "https://codeberg.org/readmemyrights/ndb.lua",
   license = "AGPL3 only"
}
dependencies = {
	"lua >= 5.2",
	"lpeg",
}
build = {
   type = "builtin",
   modules = {
      ndb = "ndb.lua",
   }
}
