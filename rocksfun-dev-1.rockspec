rockspec_format = "3.0"
package = "rocksfun"
version = "dev-1"
source = {
	url = "git://github.com/Deepak123bharat/rocks-fun",
}
description = {
	summary = "A set of basic functional utilities",
	detailed = [[
		Basic functional utilities to manipulate tables.
	]],
	homepage = "https://github.com/Deepak123bharat/rocks-fun", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1, < 5.4",
}
build = {
	type = "builtin",
	modules = {
		["rocks.fun"] = "src/rocks/fun.lua",
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