package = "xmlpeg"
version = "scm-0"
rockspec_format = "3.0"
source = {
	url = "git+https://codeberg.org/sewbacca/xmlpeg"
}
description = {
	homepage = "https://codeberg.org/sewbacca/xmlpeg",
	license = "MIT",
	summary = "XML/html parser using lpeg(label).",
}
build = {
	type = "builtin",
	modules = {
		["xmlpeg"] = "lua/xmlpeg.lua"
	}
}
dependencies = {
	'lpeglabel ~> 1',
}
test_dependencies = {
	'sfs scm-0',
	'ansicolors ~> 1',
}
test = {
	script = "test.lua"
}
