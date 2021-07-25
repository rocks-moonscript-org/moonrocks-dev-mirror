rockspec_format = "3.0"
package = "rocks-patch"
version = "dev-1"
source = {
	url = "git://github.com/Deepak123bharat/rocks-patch",
}
description = {
	summary = "Patch utility to apply unified diffs.",
	detailed = [[
		http://lua-users.org/wiki/LuaPatch
		
		(c) 2008 David Manura, Licensed under the same terms as Lua (MIT license).
 		Code is heavily based on the Python-based patch.py version 8.06-1
   		Copyright (c) 2008 rainforce.org, MIT License
  		Project home: http://code.google.com/p/python-patch/ .
   		Version 0.1
	]],
	homepage = "https://github.com/Deepak123bharat/rocks-patch", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1, < 5.5",
	"rocksfs",
	"rocksfun",
}
build = {
	type = "builtin",
	modules = {
		["rocks.patch"] = "src/rocks/patch.lua",
	}
}
test_dependencies = {
   "busted-htest",
}
test = {
   type = "busted",
   platforms = {
      windows = {
         flags = { "--exclude-tags=ssh,git,unix" }
      },
      unix = {
         flags = { "--exclude-tags=ssh,git" }
      }
   }
}