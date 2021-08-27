rockspec_format = "3.0"
package = "rocks-tar"
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
	"lua >= 5.1, < 5.5",
	"rocks-fs",
	"rocks-fun",
	"rocks-dir",
}
build = {
	type = "builtin",
	modules = {
		["rocks.tar"] = "src/rocks/tar.lua",
	}
}
test_dependencies = {
   "busted-htest",
   "rocks-fs",
   "rocks-zip",
   "rocks-sysdetect",
   "luafilesystem",
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