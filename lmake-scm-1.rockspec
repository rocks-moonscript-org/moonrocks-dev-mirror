package = "lmake"
version = "scm-1"
source = {
   url = "git://github.com/Sengflex/lmake"
}
description = {
   summary = "Simple replacement for make tool",
   detailed = [[
      This tool relies on Lua power to build files incrementaly.
   ]],
   homepage = "https://github.com/Sengflex/lmake", -- We don't have one yet
   license = "MIT/X11" -- or whatever you like
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "luafilesystem >= 1.8.0-1"
   -- If you depend on other rocks, add them here
}
build = {
   type = "builtin",
   modules = {
     ['lmake.rule']='src/lmake/rule.lua',
     ['lmake.ruleenv']='src/lmake/ruleenv.lua',
     ['lmake.util']='src/lmake/util.lua'
   },
   install={
     bin={
       ["lmake"]="src/lmake.lua"
     }
   }
}