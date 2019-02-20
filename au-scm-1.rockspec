package = "au"
version = "scm-1"
source = {
	url = "git://github.com/ers35/au"
}
description = {
	summary = "Encode and decode the Au audio file format.",
	homepage = "https://github.com/ers35/au",
	license = "CC0"
}
dependencies = {
	"lua >= 5.3",
}
build = {
	type = "builtin",
	modules = {
		au = "au.lua",
	},
}
