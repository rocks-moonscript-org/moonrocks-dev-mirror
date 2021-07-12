rockspec_format = "3.0"
package = "rockstar"
version = "dev-1"
source = {
	url = "git://github.com/Deepak123bharat/rocks-tar",
}
description = {
	summary = "A pure-Lua implementation of untar.",
	detailed = [[
		Module to unpacking .tar archives.
	]],
	homepage = "https://github.com/Deepak123bharat/rocks-tar", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1, < 5.4",
	"rocksfs",
	"rocksfun",
	"rocksdir",
}
build = {
	type = "builtin",
	modules = {
		["rocks.tar"] = "src/rocks/tar.lua",
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