package = "luacmdtable"
version = "scm-0"

source = {
  url = "git://github.com/emiruz/luacmdtable.git",
}

description = {
  summary = "Easily make command tables for elegant workflows in Lua.",
  homepage = "https://github.com/emiruz/luacmdtable",
  license = "MIT/X11",
  maintainer = "emir@usgroupltd.uk",
  detailed = "Easily make command tables for elegant workflows in Lua."
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = { cmdtable = "cmdtable.lua" }
}
