rockspec_format = "3.0"
package = "rocks-sysdetect"
version = "dev-1"
source = {
	url = "git://github.com/Deepak123bharat/rocks-sysdetect",
}
description = {
	summary = "Module for detecting operating system.",
	detailed = [[
		Detect the operating system and architecture without forking a subprocess.
	]],
	homepage = "https://github.com/Deepak123bharat/rocks-sysdetect", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1, < 5.5",
}
build = {
	type = "builtin",
	modules = {
		["rocks.sysdetect"] = "src/rocks/sysdetect.lua",
	}
}
test_dependencies = {
   "luacov",
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