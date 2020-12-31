rockspec_format = "3.0"
package = "xhmoon"
version = "dev-1"
source = {
	url = "git://github.com/DarkWiiPlayer/xhmoon.git";
}
description = {
	summary = "Helper library for MoonXML.";
	homepage = "https://github.com/DarkWiiPlayer/xhmoon";
	license = "Unlicense";
	labels = {
		"xml";
		"html";
	 }
}
dependencies = {
	"lua >= 5.1";
}
build = {
	type = "builtin",
	modules = {
		xhmoon = 'xhmoon.lua'
	}
}
