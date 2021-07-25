rockspec_format = "3.0"
package = "rocks-dir"
version = "dev-1"
source = {
	url = "git://github.com/Deepak123bharat/rocks-dir.git",
}
description = {
	summary = "Generic utilities for handling pathnames.",
	detailed = [[
		Module to handle pathnames.
	]],
	homepage = "https://github.com/Deepak123bharat/rocks-dir", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1, < 5.5",
}
build = {
	type = "builtin",
	modules = {
		["rocks.dir"] = "src/rocks/dir.lua",
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