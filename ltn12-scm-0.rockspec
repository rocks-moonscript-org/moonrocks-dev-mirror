package = "ltn12"
version = "scm-0"

source = {
   url = "https://github.com/diegonehab/luasocket/archive/master.zip",
   dir = "luasocket-master",
}


description = {
   summary = "LTN12 Filters Sources And Sinks",
   detailed = [[
   ]],
   homepage = "http://luaforge.net/projects/luasocket/",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ltn12 = "src/ltn12.lua",
   }
}
