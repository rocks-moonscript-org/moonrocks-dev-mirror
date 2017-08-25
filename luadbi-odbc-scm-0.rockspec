package = "luadbi-odbc"
version = "scm-0"
source = {
  url = "https://github.com/moteus/lua-odbc-dbi/archive/master.zip",
  dir = "luadbi-odbc-master",
}

description = {
  summary = "ODBC Driver for Lua-DBI library",
  homepage = "https://github.com/moteus/lua-odbc-dbi",
  detailed = [[]],
  license  = "MIT/X11",
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "luadbi > 0.5",
  "odbc",
}

build = {
  type = "builtin",
  copy_directories = {"spec"},

  modules = {
    [ "dbd.odbc" ] = "src/dbd/odbc.lua",
  }
}
